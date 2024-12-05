import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video1 extends StatefulWidget {
  const video1({super.key});

  @override
  State<video1> createState() => _video1State();
}

class _video1State extends State<video1> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _controller = VideoPlayerController.asset("custome/video/market.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("form"),
        ),
        body: Stack(
          children: [
            SizedBox.expand(
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      child: VideoPlayer(_controller),
                      width: _controller.value.size?.width ?? 0,
                      height: _controller.value.size?.height ?? 0,
                    )))
          ],
        ));
  }
}
