import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:five_widgets_architecture/posting/domain/i_posting_repository.dart';
import 'package:five_widgets_architecture/posting/domain/posting.dart';
import 'package:five_widgets_architecture/posting/domain/postings_cubit.dart';
import 'package:five_widgets_architecture/posting/pages/postings/postings_page_loaded_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostingsPageProvider extends ConsumerWidget {
  final IList<Posting> postings;

  const PostingsPageProvider({
    required this.postings,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cubit = PostingsCubit(
      postingRepository: ref.watch(postingRepositoryProvider),
      postings: postings,
    );

    return ProviderScope(
      overrides: [
        postingsCubitProvider.overrideWithValue(cubit),
      ],
      child: const PostingsPageContent(),
    );
  }
}
