import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:five_widgets_architecture/posting/domain/i_posting_repository.dart';
import 'package:five_widgets_architecture/posting/domain/postings_cubit.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_card/posting_consumer.dart';
import 'package:five_widgets_architecture/posting/presentation/postings_page_scaffold.dart';
import 'package:five_widgets_architecture/widgets/error_section.dart';
import 'package:five_widgets_architecture/widgets/loading_section.dart';

final postingsProvider = FutureProvider(
  (ref) {
    final repository = ref.watch(postingRepositoryProvider);
    return repository.getPostings();
  },
);

class PostingsPage extends ConsumerWidget {
  const PostingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPostings = ref.watch(postingsProvider);

    return asyncPostings.map(
      data: (postings) {
        final cubit = PostingsCubit(
          postingRepository: ref.watch(postingRepositoryProvider),
          postings: postings.value,
        );

        return ProviderScope(
          overrides: [
            postingsCubitProvider.overrideWithValue(cubit),
          ],
          child: const PostingsPageScaffold(
            body: _LoadedPostingsPage(),
          ),
        );
      },
      error: (_) => const PostingsPageScaffold(
        body: ErrorSection(),
      ),
      loading: (_) => const PostingsPageScaffold(
        body: LoadingSection(),
      ),
    );
  }
}

class _LoadedPostingsPage extends ConsumerWidget {
  const _LoadedPostingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ids = ref.watch(
      postingsCubitProvider.select(
        (postings) => postings.map((posting) => posting.id).toIList(),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemCount: ids.length,
        itemBuilder: (context, index) => PostingConsumer(postingId: ids[index]),
      ),
    );
  }
}
