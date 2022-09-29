import 'dart:async';

import 'package:flutter/material.dart';

class PostingInputLayout extends StatefulWidget {
  final FutureOr<void> Function(String body) onPost;

  const PostingInputLayout({
    required this.onPost,
    super.key,
  });

  @override
  State<PostingInputLayout> createState() => _PostingInputLayoutState();
}

class _PostingInputLayoutState extends State<PostingInputLayout> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: _textEditingController,
                maxLines: 1,
              ),
            ),
            const SizedBox(width: 8.0),
            FloatingActionButton(
              elevation: 0.0,
              child: Icon(
                Icons.send,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              onPressed: () async {
                if (_textEditingController.text.isEmpty) {
                  return;
                }

                await widget.onPost(_textEditingController.text);
                _textEditingController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
