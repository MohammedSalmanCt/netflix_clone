import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/widgets/app_bar_widgetgs.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/constant.dart';

class ScreenDownload extends StatelessWidget {
   ScreenDownload({super.key});
  final List imageList=[
    "https://m.media-amazon.com/images/M/MV5BNjQ4ZmY2MjItZGVlOS00NjNmLWJlNjYtOGNiNTY3YjcxODQxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX100_CR0,0,100,100_AL_.jpg",
    "https://m.media-amazon.com/images/M/MV5BOWU0MDJhMTAtYzQzNy00OGFmLWExY2ItNmIyOTNjNzUwMjA2XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_UX100_CR0,0,100,100_AL_.jpg",
    "https://m.media-amazon.com/images/M/MV5BNDRiZGQ4NWYtZGU3Ni00NTljLWFmYzUtZTA1NjFhM2Q4ZmU4XkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_UX100_CR0,0,100,100_AL_.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
          child: AppBarWidget(title: "Downloads")),
      body: ListView(
        children: [
          Row(
            children: [
              kwidth,
              Icon(Icons.settings,
              color: kwhite),
              Text("Smart Downloads")
            ],
          ),
          Text("Indroducing Downloads For You"),
          Text("We will Download a personalised selection of movies and shows for you. So there is always something to watch one your device"),
        Container(
          color: Colors.white,
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
              ),
              DownloadsImageWidget(imageList: imageList[0],
                margin:EdgeInsets.only(left: 130, bottom: 50),
              angle: 20,
                  size:Size(size.height*(0.9),size.width)
              ),
              DownloadsImageWidget(imageList: imageList[1],
                margin:EdgeInsets.only(right: 130,bottom: 50),
                angle: -20,
                size:Size(size.height*(0.9),size.width)
              ),
             DownloadsImageWidget(imageList: imageList[2],
                margin:EdgeInsets.only(top: 0),
                 size:Size(size.height*(0.9),size.width)

             ),
            ],
          ),
        ),
        MaterialButton(
          color: kButtonBlue,
          onPressed: () {},
        child: Text("Set up",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        )),),
          MaterialButton(
            color: kButtonWhite,
            onPressed: () {},
            child: Text("See what you can Download",
                style: TextStyle(
                    color: kButtonBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                )),)
        ],
      ),
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle=0,
    required this.margin,
    required this.size
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle *pi /180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            )
          )
        ),
      ),
    );
  }
}