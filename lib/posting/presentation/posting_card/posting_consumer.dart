import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:five_widgets_architecture/posting/domain/postings_cubit.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_card/posting_card.dart';

class PostingConsumer extends ConsumerWidget {
  final String postingId;

  const PostingConsumer({
    required this.postingId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    try {
      final posting = ref.watch(postingsCubitProvider.select(
        (postings) => postings.firstWhere(
          (posting) => posting.id == postingId,
        ),
      ));

      return PostingCard(
        posting: posting,
        onUpvote: () => ref.read(postingsCubitProvider.notifier).voteUp(id: postingId),
        onDownvote: () => ref.read(postingsCubitProvider.notifier).voteDown(id: postingId),
      );
    } catch (e) {
      return Container();
    }
  }
}
