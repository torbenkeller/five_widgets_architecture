import 'package:five_widgets_architecture/posting/pages/postings/postings_page.dart';
import 'package:five_widgets_architecture/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookApp.material(
  name: 'Four Widgets Architecture',
  devices: [Apple.iPhone11],
  foldersExpanded: true,
  widgetsExpanded: true,
)
class FourWidgetsArchitecture extends StatelessWidget {
  const FourWidgetsArchitecture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Four Widgets Architecture',
      debugShowCheckedModeBanner: false,
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      home: const PostingsPage(),
    );
  }
}
