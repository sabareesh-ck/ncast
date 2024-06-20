import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/explore_screen.dart';
import 'package:ncast/screen/favourite_screen.dart';
import 'package:ncast/screen/headphone_screen.dart';
import 'package:ncast/widgets/homescreen/bottom_navigator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
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
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              HeadphoneScreen(),
              ExploreScreen(),
              FavouriteScreen()
            ],
          ),
          const Positioned(
            top: 700,
            left: 20,
            right: 20,
            child: BottomNavigator(),
          ),
        ],
      ),
    );
  }
}
