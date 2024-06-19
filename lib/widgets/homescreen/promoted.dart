import 'package:flutter/material.dart';
import 'package:ncast/model/podcast_list.dart';

class Promoted extends StatelessWidget {
  const Promoted({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              child: Image.asset(
                promatedPodcast[index].imagepath,
                fit: BoxFit.fill,
              ),
            );
          },
          itemCount: promatedPodcast.length,
        ),
      ),
    );
  }
}
