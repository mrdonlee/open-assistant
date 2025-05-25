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
      height: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'How can I help you today?',
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
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
