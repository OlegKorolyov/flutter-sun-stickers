import 'package:flutter/material.dart' hide Badge;
import 'package:sun_stickers/ui/screens/profile_screen.dart';
import 'package:sun_stickers/ui_kit/_ui_kit.dart';

import 'ui/_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunny stickers',
      theme: AppTheme.lightTheme,
      home: const ProfileScreen(),
    );
  }
}
