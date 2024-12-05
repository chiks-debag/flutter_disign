import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class sc extends StatefulWidget {
  const sc({super.key});

  @override
  State<sc> createState() => _scState();
}

class _scState extends State<sc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scratch"),
      ),
      body: Center(
        child: Column(
          children: [
            Scratcher(
                image: Image.asset("custome/image/scratch.jpg"),
                child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset("custome/image/sc1.jpg"),
                    )))
          ],
        ),
      ),
    );
  }
}
