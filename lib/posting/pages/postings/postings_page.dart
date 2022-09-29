import 'package:five_widgets_architecture/posting/domain/i_posting_repository.dart';
import 'package:five_widgets_architecture/posting/pages/postings/postings_page_provider.dart';
import 'package:five_widgets_architecture/posting/widgets/postings_page_scaffold.dart';
import 'package:five_widgets_architecture/widgets/error_content.dart';
import 'package:five_widgets_architecture/widgets/error_section.dart';
import 'package:five_widgets_architecture/widgets/loading_content.dart';
import 'package:five_widgets_architecture/widgets/loading_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postingsProvider = FutureProvider(
  (ref) {
    final repository = ref.watch(postingRepositoryProvider);
    return repository.getPostings();
  },
);

class PostingsPage extends ConsumerWidget {
  const PostingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPostings = ref.watch(postingsProvider);

    return asyncPostings.map(
      data: (postings) => PostingsPageProvider(
        postings: postings.value,
      ),
      error: (_) => const PostingsPageScaffold(
        body: ErrorContent(),
      ),
      loading: (_) => const PostingsPageScaffold(
        body: LoadingContent(),
      ),
    );
  }
}
