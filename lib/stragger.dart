import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';

class mark1 extends StatefulWidget {
  const mark1({super.key});

  @override
  State<mark1> createState() => _mark1State();
}

class _mark1State extends State<mark1> {
  var ps = [
    "custome/image/image1.jpg",
    "custome/image/image2.jpg",
    "custome/image/histry.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Stack(
          children: [
            Container(
              child: Container(
                child: PhotoViewGallery.builder(
                    customSize: Size(400, 400),
                    itemCount: ps.length,
                    builder: (context, index) {
                      return PhotoViewGalleryPageOptions(
                          imageProvider: AssetImage(ps[index]));
                    }),
              ),
            )
          ],
        ));
  }
}
