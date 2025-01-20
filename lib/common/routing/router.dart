import 'package:ceiba_test/feature/user/presentation/page/home.dart';
import 'package:ceiba_test/feature/user/presentation/page/user_post_page.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            name: 'userPosts',
            path: 'user/:id/posts',
            builder: (context, state) => UserPostPage(
              userId: int.parse(state.pathParameters['id']!),
            ),
          ),
        ],
      ),
    ],
  );
}
