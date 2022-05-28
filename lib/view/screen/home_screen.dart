import 'package:flutter/material.dart';
import 'package:videocall_app/view/screen/video_call_screen.dart';
import 'package:videocall_app/view/widget/message_text_field.dart';

import '../widget/message_bubble.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return const VideoCallScreen();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.video_camera_front,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 16),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, index) {
                return _messages[index];
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
            ),
          ),
          const MessageTextField()
        ],
      ),
    );
  }
}

const _messages = <MessageBubble>[
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
    imageUrl: 'asset/images/revolt.png',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
    imageUrl: 'asset/images/revolt.png',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
    imageUrl: 'asset/images/revolt.png',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
    imageUrl: 'asset/images/revolt.png',
  ),
  MessageBubble(
    message: 'This app would be perfect if it had video chat',
    date: 'Apr 22 8:59 PM',
  ),
];
