import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(const OpenWebUI());
}

class OpenWebUI extends StatelessWidget {
  const OpenWebUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open WebUI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ChatScreen(),
    );
  }
}
