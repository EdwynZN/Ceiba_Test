import 'package:ceiba_test/feature/post/presentation/widget/post_card.dart';
import 'package:ceiba_test/feature/post/presentation/widget/user_contact_information_card.dart';
import 'package:ceiba_test/feature/user/domain/model/user_with_posts_read_model.dart';
import 'package:ceiba_test/feature/user/infrastructure/user_read_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userPostsProvider = FutureProvider.family
    .autoDispose<UserWithPostsReadModel, int>((ref, userId) {
  return ref.watch(userReadRepositoryProvider).getUserWithPosts(userId);
});

class UserPostPage extends ConsumerWidget {
  const UserPostPage({required this.userId, super.key});

  final int userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userProfilePosts = ref.watch(userPostsProvider(userId));
    return Scaffold(
      appBar: AppBar(
        title: userProfilePosts.maybeWhen<Widget?>(
          data: (data) => Text(data.name),
          orElse: () => null,
        ),
      ),
      body: userProfilePosts.when<Widget>(
        data: _UserAccountBody.new,
        error: (_, __) => Center(
          child: TextButton(
            onPressed: () => ref.invalidate(userPostsProvider(userId)),
            child: const Text('Retry'),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class _UserAccountBody extends StatelessWidget {
  const _UserAccountBody(this.userWithPostsReadModel);

  final UserWithPostsReadModel userWithPostsReadModel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final posts = userWithPostsReadModel.posts;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserContactInformationCard(
            email: userWithPostsReadModel.email,
            phone: userWithPostsReadModel.phone,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverToBoxAdapter(
            child: Row(
              spacing: 12,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: theme.colorScheme.primary,
                  ),
                ),
                Text(
                  'Publicaciones',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverSafeArea(
          top: false,
          sliver: posts.isEmpty
              ? const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: Text('No posts')),
              )
              : SliverList.builder(
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return PostCard(title: post.title, body: post.body);
                  },
                  itemCount: posts.length,
                ),
        ),
      ],
    );
  }
}
