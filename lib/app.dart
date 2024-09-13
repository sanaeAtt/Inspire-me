import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inspiration_app_ui_and_animation/screens/home_page.dart';
import 'package:inspiration_app_ui_and_animation/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
