import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:scratcher/scratcher.dart';
import 'package:video_player/video_player.dart';

class sc1 extends StatefulWidget {
  const sc1({super.key});

  @override
  State<sc1> createState() => _sc1State();
}

class _sc1State extends State<sc1> {
  int? selectindex;
  var list = [
    Container(
      height: 400,
      width: 400,
    ),
    Container(
      height: 400,
      width: 400,
    ),
    Container(
      height: 400,
      width: 400,
    ),
    Container(
      height: 400,
      width: 400,
    )
  ];
  var color = [Colors.amber, Colors.red, Colors.blue, Colors.green];
  List value1 = [
    {"card1": "100"},
    {"card2": "0"},
    {"card3": "1000"},
    {"card": "0"}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scartch"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: CardSwiper(
              cardBuilder: (context, index, horizontalOffsetPercentage,
                  verticalOffsetPercentage) {
                print(index);
                return GestureDetector(
                  onTap: () {
                    selectindex = index;

                    setState(() {});
                  },
                  child: Container(
                      decoration: BoxDecoration(color: color[index]),
                      child: selectindex == index
                          ? Scratcher(
                              enabled: true,
                              child: Center(
                                child: Text(
                                  "value:${value1[index].values}",
                                ),
                              ))
                          : Center(child: Text("card ${index + 1}tab use"))),
                );
              },
              cardsCount: list.length,
            ),
          )
        ],
      ),
    );
  }
}
