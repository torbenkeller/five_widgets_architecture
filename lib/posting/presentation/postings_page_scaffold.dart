import 'package:flutter/material.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_input/posting_input_consumer.dart';

class PostingsPageScaffold extends StatelessWidget {
  final Widget body;

  const PostingsPageScaffold({
    required this.body,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Postings'),
        ),
        body: Column(
          children: [
            Expanded(child: body),
            const PostingInputConsumer(),
          ],
        ),
      ),
    );
  }
}
