import 'package:ceiba_test/feature/user/domain/model/user_read_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/user_read_repository_impl.dart';
import 'package:ceiba_test/feature/user/presentation/widget/user_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final usersProvider = FutureProvider<List<UserReadModel>>(
  (Ref ref) {
    return ref.watch(userReadRepositoryProvider).getUsers();
  },
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de Ingreso'),
        centerTitle: false,
        backgroundColor: Colors.green,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        scrolledUnderElevation: 0,
        elevation: 0,
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final users = ref.watch(usersProvider);
          return users.maybeWhen(
            data: (data) {
              return ListView.builder(
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  final user = data[index];
                  return UserCard(userReadModel: user);
                },
                itemCount: data.length,
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => Center(
              child: TextButton(
                onPressed: () => ref.invalidate(usersProvider),
                child: const Text('retry'),
              ),
            ),
          );
        },
      ),
    );
  }
}
