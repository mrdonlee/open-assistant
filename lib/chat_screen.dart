import 'package:flutter/material.dart';
import 'package:open_assistant/widgets/chat_bubble_widget.dart';
import 'widgets/chat_input_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double chatWidth = screenWidth * 0.5;

    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: chatWidth),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder:
                        (_, int index) =>
                            ChatBubble(isUser: true, message: _messages[index]),
                  ),
                ),
                ChatInput(sendMessage: _sendMessage),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
