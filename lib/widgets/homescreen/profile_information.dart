import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Container(
            width: 364,
            height: 285,
            decoration: BoxDecoration(
                color: const Color(0xFF4C0099),
                borderRadius: BorderRadius.circular(25)),
            child: Stack(
              children: [
                SvgPicture.asset(Assets.images.profile.shade),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text(
                        FirebaseAuth.instance.currentUser!.displayName!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  '22',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                Text(
                                  'Liked Podcasts',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: const Color(0xFFFFFFFF)
                                        .withOpacity(0.7),
                                  ),
                                )
                              ],
                            ),
                          ),
                          VerticalDivider(
                            endIndent: 55,
                            thickness: 1,
                            color: const Color(0xFFFFFFFF).withOpacity(0.3),
                          ),
                          Expanded(
                              child: Column(children: [
                            const Text(
                              '158',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFFFFFFFF).withOpacity(0.7),
                              ),
                            )
                          ]))
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 207,
          child: CircleAvatar(
            radius: 110,
            backgroundColor: const Color(0xFFFFFFFF),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                FirebaseAuth.instance.currentUser!.photoURL!,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
