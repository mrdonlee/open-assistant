import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInput();
}

class _ChatInput extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'How can I help you today?',
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
                  IconButton(icon: Icon(Icons.arrow_upward), onPressed: () {}),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
