import 'package:five_widgets_architecture/posting/widgets/posting_card/posting_card_layout.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart' hide WidgetbookUseCase;
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: PostingCardLayout)
Widget postingCardLayoutTile(BuildContext context) => PostingCardLayout(
      createdAt: context.knobs.text(
        label: 'createdAt',
        initialValue: '5 hours ago',
      ),
      body: context.knobs.text(
        label: 'body',
        initialValue:
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et',
      ),
      votes: context.knobs
          .number(
            label: 'votes',
            initialValue: 2,
          )
          .toInt(),
      hasUpvoted: context.knobs.boolean(
        label: 'hasUpvoted',
        initialValue: true,
      ),
      hasDownvoted: context.knobs.boolean(
        label: 'hasDownvoted',
        initialValue: false,
      ),
      onUpvote: () {},
      onDownvote: () {},
    );
