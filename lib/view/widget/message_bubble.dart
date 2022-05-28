import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String? imageUrl;
  final String message;
  final String date;
  const MessageBubble(
      {Key? key, this.imageUrl, required this.message, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isReceiver = imageUrl != null;
    return Row(
      mainAxisAlignment:
          isReceiver ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isReceiver)
          const Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              //foregroundImage: AssetImage(imageUrl!),
            ),
          ),
        Flexible(
          child: Column(
            crossAxisAlignment:
                isReceiver ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(maxWidth: 275),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isReceiver ? Colors.green : Colors.blue,
                ),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                date,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        if (!isReceiver)
          const SizedBox(
            width: 12,
          )
      ],
    );
  }
}
