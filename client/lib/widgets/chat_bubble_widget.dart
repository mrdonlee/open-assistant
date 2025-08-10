import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatBubble({Key? key, required this.message, required this.isUser})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:
            isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Material(
            borderRadius: BorderRadius.only(
              topLeft: isUser ? Radius.circular(15) : Radius.circular(0),
              topRight: isUser ? Radius.circular(0) : Radius.circular(15),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            elevation: 5,
            color: isUser ? Colors.blue : Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                message,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
