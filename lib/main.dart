import 'package:flutter/material.dart';
import 'package:telegram/screens/chat_screen.dart';
import 'package:telegram/screens/main_screen.dart';
import 'package:telegram/screens/settings_screen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      routes: {
        SettingsScreen.routeName: (ctx) => const SettingsScreen(),
        ChatScreen.routeName: (ctx) => const ChatScreen(),
      },
    );
  }
}
