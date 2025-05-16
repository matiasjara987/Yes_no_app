


import 'package:flutter/material.dart';
import 'package:yes_no_app/config/config.dart';
import 'package:yes_no_app/config/themes/theme.dart';
import 'package:yes_no_app/presentation/screens/chat_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Yes no App',
    debugShowCheckedModeBanner: DebugMode().d,
    theme: YesNoTheme(selectedColor: 0).theme(),
    home: ChatScreen()
    );
  }
}