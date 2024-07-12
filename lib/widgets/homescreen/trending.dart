import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/player.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Trending extends StatelessWidget {
  const Trending(
      {super.key, required this.trendingPodcast, required this.showLoading});
  final List trendingPodcast;
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    return Skeletonizer(
      enabled: showLoading,
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 80),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: trendingPodcast.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 96,
                  width: 108,
                  child: Image.network(trendingPodcast[index].imagepath),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trendingPodcast[index].title,
                          style: const TextStyle(
                              color: Color(0xFF1F1F1F),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          trendingPodcast[index].subtitle,
                          style: TextStyle(
                            color: const Color(0xFF1F1F1F).withOpacity(0.7),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '${trendingPodcast[index].duration} min ',
                          style: TextStyle(
                            color: const Color(0xFF1F1F1F).withOpacity(0.7),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) => Player(
                            imagepath: trendingPodcast[index].imagepath,
                            title: trendingPodcast[index].title,
                            duration: trendingPodcast[index].duration,
                            subtitle: trendingPodcast[index].subtitle,
                          ),
                        ),
                      );
                      final ref = db
                          .collection('users')
                          .doc(FirebaseAuth.instance.currentUser!.uid)
                          .collection('Podcasts')
                          .doc('History');
                      ref.update({
                        'id': FieldValue.arrayUnion([trendingPodcast[index].id])
                      });
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        SvgPicture.asset(Assets.images.icon.play),
                        SvgPicture.asset(
                          Assets.images.icon.playBackground,
                          height: 50,
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
