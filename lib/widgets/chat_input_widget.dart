import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key, required this.sendMessage});

  final Function(String) sendMessage;

  @override
  State<ChatInput> createState() => _ChatInput();
}

class _ChatInput extends State<ChatInput> {
  final TextEditingController _chatMessageController = TextEditingController();

  void _sendMessage() {
    final message = _chatMessageController.text.trim();

    if (message.isNotEmpty) {
      widget.sendMessage(message);
      _chatMessageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              constraints: BoxConstraints(maxHeight: 400),
              child: SingleChildScrollView(
                child: TextField(
                  maxLines: null,
                  controller: _chatMessageController,
                  onSubmitted: (_) => _sendMessage(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'How can I help you today?',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.add), onPressed: () {}),
                    TextButton.icon(
                      icon: Icon(Icons.terminal),
                      label: Text("Code Interpreter"),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(icon: Icon(Icons.mic), onPressed: () {}),
                    IconButton(icon: Icon(Icons.send), onPressed: _sendMessage),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
