import 'package:five_widgets_architecture/posting/widgets/posting_input/posting_input_consumer.dart';
import 'package:flutter/material.dart';

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Expanded(child: body),
              const PostingInputConsumer(),
            ],
          ),
        ),
      ),
    );
  }
}
