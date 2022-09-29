import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:five_widgets_architecture/posting/domain/postings_cubit.dart';
import 'package:five_widgets_architecture/posting/widgets/posting_card/posting_consumer.dart';
import 'package:five_widgets_architecture/posting/widgets/postings_page_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostingsPageContent extends ConsumerWidget {
  const PostingsPageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ids = ref.watch(
      postingsCubitProvider.select(
        (postings) => postings.map((posting) => posting.id).toIList(),
      ),
    );

    return PostingsPageScaffold(
      body: ListView.builder(
        itemCount: ids.length,
        itemBuilder: (context, index) => PostingConsumer(postingId: ids[index]),
      ),
    );
  }
}
