import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({super.key});

  @override
  State<ChatInput> createState() => _ChatInput();
}

class _ChatInput extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            maxLines: null,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'How can I help you today?',
              hintStyle: TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
