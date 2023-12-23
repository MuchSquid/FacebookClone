// ignore_for_file: unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_2/facebook_ui/facebook_ui.dart';
import 'package:test_2/widgets/aspect_radio.dart';
import 'package:test_2/widgets/custom_font.dart';
import 'package:test_2/widgets/custom_icon2.dart';
import 'package:test_2/widgets/image.dart';
import 'package:test_2/widgets/list_view.dart';
import 'package:test_2/widgets/list_view_builder.dart';
import 'package:test_2/widgets/safe_area.dart';
import 'package:test_2/widgets/scaffold.dart';
import 'package:test_2/widgets/single_child_scroll_view.dart';
import 'package:test_2/widgets/stack.dart';
import 'widgets/container.dart';
import 'widgets/text.dart';
import 'widgets/column.dart';
import 'widgets/row.dart';
import 'widgets/flexible.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      enabled: kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      home: FacebookUi(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      //theme: ThemeData.dark(),
    );
  }
}
