import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/headphone_screen.dart';
import 'package:ncast/widgets/homescreen/bottom_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 31, top: 5),
          child: SvgPicture.asset(
            Assets.images.appBar,
          ),
        ),
        leadingWidth: 221.35,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
            ),
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                SvgPicture.asset(Assets.images.notifiaction),
                SvgPicture.asset(
                  Assets.images.notificationIcon,
                  height: 50,
                  width: 10,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavigator(),
      body: const HeadphoneScreen(),
    );
  }
}
