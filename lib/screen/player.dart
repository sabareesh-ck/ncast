import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/widgets/homescreen/loading.dart';
import 'package:ncast/widgets/homescreen/player_image.dart';

class Player extends StatelessWidget {
  const Player({
    super.key,
    required this.imagepath,
    required this.title,
    required this.subtitle,
    required this.duration,
  });
  final String imagepath;
  final String title;
  final String subtitle;
  final String duration;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 3),
          child: GestureDetector(
            onTap: Navigator.of(context).pop,
            child: Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    SvgPicture.asset(Assets.images.icon.back),
                    SvgPicture.asset(
                      Assets.images.icon.backIcon,
                      height: 50,
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(right: 70),
          child: Text(
            "Now Playing",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: Column(
        children: [
          PlayerImage(
            imagepath: imagepath,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xFF1F1F1F),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 16,
              color: const Color(0xFF1F1F1F).withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '07:00',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xFF1F1F1F).withOpacity(0.7),
                  ),
                ),
                Text(
                  '15:00',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: const Color(0xFF1F1F1F).withOpacity(0.7),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10, bottom: 35),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 8.0,
                top: 15,
              ),
              child: Loading(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(Assets.images.icon.player1),
              SvgPicture.asset(Assets.images.icon.player2),
              SvgPicture.asset(Assets.images.icon.player3),
              SvgPicture.asset(Assets.images.icon.player4),
              SvgPicture.asset(Assets.images.icon.player5),
            ],
          )
        ],
      ),
    );
  }
}
