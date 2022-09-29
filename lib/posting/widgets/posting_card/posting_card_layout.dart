import 'package:flutter/material.dart';

class PostingCardLayout extends StatelessWidget {
  final String createdAt;
  final String body;
  final int votes;
  final bool hasUpvoted;
  final bool hasDownvoted;

  final Function onUpvote;
  final Function onDownvote;

  const PostingCardLayout({
    required this.createdAt,
    required this.body,
    required this.votes,
    required this.hasUpvoted,
    required this.hasDownvoted,
    required this.onUpvote,
    required this.onDownvote,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          top: 16.0,
          bottom: 16.0,
          right: 8.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 124),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(createdAt, style: Theme.of(context).textTheme.caption),
                    const SizedBox(height: 4.0),
                    Text(body),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: SizedBox(
                    width: 32,
                    child: Icon(
                      Icons.keyboard_arrow_up,
                      size: hasUpvoted ? 32 : null,
                    ),
                  ),
                  color: hasUpvoted ? Theme.of(context).colorScheme.primary : Colors.black,
                  onPressed: () => onUpvote(),
                ),
                Text(votes.toString(), style: Theme.of(context).textTheme.headline6),
                IconButton(
                  icon: SizedBox(
                    width: 32.0,
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: hasDownvoted ? 32 : null,
                    ),
                  ),
                  color: hasDownvoted ? Theme.of(context).colorScheme.primary : Colors.black,
                  onPressed: () => onDownvote(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
