import 'package:flutter/material.dart';
import 'package:five_widgets_architecture/posting/domain/posting.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_card/posting_card_layout.dart';

class PostingCard extends StatelessWidget {
  final Posting posting;
  final Function onUpvote;
  final Function onDownvote;

  const PostingCard({
    required this.posting,
    required this.onUpvote,
    required this.onDownvote,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PostingCardLayout(
      body: posting.body,
      votes: posting.votes,
      hasUpvoted: posting.myVote == PostingVote.up,
      hasDownvoted: posting.myVote == PostingVote.down,
      createdAt: getFormattedDate(posting.createdAt),
      onUpvote: onUpvote,
      onDownvote: onDownvote,
    );
  }

  String getFormattedDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      return '${difference.inDays ~/ 365} years ago';
    }

    if (difference.inDays > 30) {
      return '${difference.inDays ~/ 30} months ago';
    }

    if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    }

    if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    }

    if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    }

    return 'now';
  }
}
