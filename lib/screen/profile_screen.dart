import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncast/cubit/profile_screen_cubit.dart';
import 'package:ncast/widgets/homescreen/dummy_loader.dart';
import 'package:ncast/widgets/homescreen/profile_information.dart';
import 'package:ncast/widgets/homescreen/recently_played.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 33),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfileInformation(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Recently Played",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF1F1F1F),
              ),
            ),
            BlocBuilder<ProfileScreenCubit, ProfileScreenState>(
              builder: (context, state) {
                if (state is ProfileScreenLoaded) {
                  return RecentlyPlayed(
                    showLoading: false,
                    recentlyPlayed: state.recentlyPlayed,
                  );
                }
                if (state is ProfileScreenLoading) {
                  return const DummyLoader();
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}
