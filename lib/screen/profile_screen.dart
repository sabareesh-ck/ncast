import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ncast/widgets/homescreen/profile_information.dart';
import 'package:ncast/widgets/homescreen/recently_played.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 33),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileInformation(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Recently Played",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF1F1F1F),
              ),
            ),
            RecentlyPlayed()
          ],
        ),
      ),
    );
  }
}
