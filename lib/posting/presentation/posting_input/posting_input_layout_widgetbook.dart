import 'package:flutter/material.dart';
import 'package:five_widgets_architecture/posting/presentation/posting_input/posting_input_layout.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: PostingInputLayout)
Widget postingInputLayout(BuildContext context) => Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PostingInputLayout(onPost: (_) {}),
        ],
      ),
    );
