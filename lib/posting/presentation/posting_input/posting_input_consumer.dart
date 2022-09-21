import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:five_widgets_architecture/posting/domain/postings_cubit.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_input/posting_input_layout.dart';

class PostingInputConsumer extends ConsumerWidget {
  const PostingInputConsumer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PostingInputLayout(
      onPost: (body) async {
        await ref.read(postingsCubitProvider.notifier).createPosting(body: body);
      },
    );
  }
}
