import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class mark extends StatefulWidget {
  const mark({super.key});

  @override
  State<mark> createState() => _markState();
}

class _markState extends State<mark> {
  late VideoPlayerController _controller;
  var myindex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = VideoPlayerController.asset("custome/video/egle.mp4")
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                    child: Container(
                  child: VideoPlayer(_controller),
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                ))),
          ),
          Positioned.fill(
              child: Container(
                  decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
              const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7)
            ]),
          ))),
          Container(
              margin: EdgeInsets.only(top: 130, left: 16),
              height: 430,
              width: 340,
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 240),
                    child: Text(
                      "Emialid",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.white,
                            )),
                        style: TextStyle(color: Colors.white),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 210),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            )),
                        style: TextStyle(color: Colors.white),
                      )),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(fixedSize: Size(90, 20)),
                          child: Text(
                            "Login",
                          ))
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
