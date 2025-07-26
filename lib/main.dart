import 'package:flutter/material.dart';
import 'chat_screen.dart';

void main() {
  runApp(const OpenAssistant());
}

class OpenAssistant extends StatelessWidget {
  const OpenAssistant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Assistant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          brightness: Brightness.dark,
        ),
      ),
      home: SafeArea(
        maintainBottomViewPadding: true,
        child: const ChatScreen(),
      ),
    );
  }
}
