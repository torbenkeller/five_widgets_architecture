// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:core';

import 'package:five_widgets_architecture/posting/widgets/posting_card/posting_card_layout_widgetbook.dart';
import 'package:five_widgets_architecture/posting/widgets/posting_input/posting_input_layout_widgetbook.dart';
import 'package:five_widgets_architecture/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Four Widgets Architecture',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Dark',
          data: getDarkTheme(),
        ),
        WidgetbookTheme(
          name: 'Light',
          data: getLightTheme(),
        ),
      ],
      devices: [
        Device(
          name: 'iPhone 11',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1792.0,
              width: 828.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.mobile,
        ),
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [
            WidgetbookFolder(
              name: 'posting',
              widgets: [],
              folders: [
                WidgetbookFolder(
                  name: 'presentation',
                  widgets: [],
                  folders: [
                    WidgetbookFolder(
                      name: 'posting_input',
                      widgets: [
                        WidgetbookComponent(
                          name: 'PostingInputLayout',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) => postingInputLayout(context),
                            ),
                          ],
                          isExpanded: true,
                        ),
                      ],
                      folders: [],
                      isExpanded: true,
                    ),
                    WidgetbookFolder(
                      name: 'posting_card',
                      widgets: [
                        WidgetbookComponent(
                          name: 'PostingCardLayout',
                          useCases: [
                            WidgetbookUseCase(
                              name: 'Default',
                              builder: (context) => postingCardLayoutTile(context),
                            ),
                          ],
                          isExpanded: true,
                        ),
                      ],
                      folders: [],
                      isExpanded: true,
                    ),
                  ],
                  isExpanded: true,
                ),
              ],
              isExpanded: true,
            ),
          ],
          widgets: [],
        ),
      ],
    );
  }
}
