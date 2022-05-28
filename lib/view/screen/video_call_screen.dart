import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: '175840c6479b409295c70ac6e69f52a8',
        channelName: 'channels',
        tempToken:
            '006175840c6479b409295c70ac6e69f52a8IAASm0e8ZMn6i8xwqaqEXaz64ETBn2tSxw1WsJlq4Ih5OLbiFPMAAAAAEAC0lltgO++TYgEAAQA675Ni'),
  );

  @override
  void initState() {
    super.initState();
    _initAgora();
  }

  void _initAgora() async {
    await _client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('VideoCall'),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
              AgoraVideoButtons(
                client: _client,
                enabledButtons: const [
                  BuiltInButtons.callEnd,
                  BuiltInButtons.toggleCamera,
                  BuiltInButtons.toggleMic,
                  BuiltInButtons.switchCamera
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
