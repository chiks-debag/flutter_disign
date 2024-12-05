import 'dart:ui';

import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  Widget drawer() {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      height: 600,
      width: 290,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Tony Sark"),
              accountEmail: Text("mynameistony@gmail.com"),
              currentAccountPicture: Image.asset("custome/image/man.jpg")),
          Container(
            child: ListTile(
              leading: Icon(Icons.man),
            ),
          ),
          Stack(
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 165, 165, 165)
                          .withOpacity(0.7)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final List<String> list = [
    "name",
    "address",
    "loginid",
    "phoneno",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: AppBar(
        title: Text("image"),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('custome/image/jungle2.jpg'),
                  fit: BoxFit.cover))),
    );
  }
}
