import 'dart:async';

import 'package:ceiba_test/common/utils/search_debounce_hook.dart';
import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/user_read_repository_impl.dart';
import 'package:ceiba_test/feature/user/presentation/widget/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersProvider =
    FutureProvider.autoDispose.family<List<UserReadModel>, String>(
  (Ref ref, String name) async {
    final users =
        await ref.watch(userReadRepositoryProvider).getUsers(name: name);
    final link = ref.keepAlive();
    Timer? timer;
    ref
      ..onResume(() {
        timer?.cancel();
        timer = null;
      })
      ..onCancel(() {
        timer ??= Timer(const Duration(seconds: 10), link.close);
      });
    return users;
  },
);

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Prueba de Ingreso')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: HookBuilder(
              builder: (context) {
                final isEmpty = useListenableSelector(
                  textController,
                  () => textController.text.isEmpty,
                );
                return TextField(
                  controller: textController,
                  onTapOutside: (_) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    labelText: 'Buscar usuario',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: isEmpty
                        ? null
                        : IconButton(
                            onPressed: textController.clear,
                            icon: const Icon(Icons.clear),
                          ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: HookConsumer(
              builder: (context, ref, _) {
                final search = useSearch(textController);
                final users = ref.watch(usersProvider(search));
                return users.maybeWhen(
                  data: (data) {
                    if (data.isEmpty) {
                      return const Center(child: Text('List is empty'));
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      itemBuilder: (context, index) {
                        final user = data[index];
                        return UserCard(userReadModel: user);
                      },
                      itemCount: data.length,
                    );
                  },
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  orElse: () => Center(
                    child: TextButton(
                      onPressed: () => ref.invalidate(usersProvider),
                      child: const Text('Reintentar'),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
