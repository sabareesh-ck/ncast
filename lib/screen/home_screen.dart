import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:ncast/bloc/bottom_navigator_bloc.dart';
import 'package:ncast/cubit/explore_screen_cubit.dart';
import 'package:ncast/cubit/favourite_screen_cubit.dart';
import 'package:ncast/cubit/home_screen_cubit_cubit.dart';
import 'package:ncast/cubit/profile_screen_cubit.dart';

import 'package:ncast/gen/assets.gen.dart';
import 'package:ncast/screen/explore_screen.dart';
import 'package:ncast/screen/favourite_screen.dart';
import 'package:ncast/screen/headphone_screen.dart';
import 'package:ncast/screen/profile_screen.dart';
import 'package:ncast/widgets/homescreen/bottom_navigator.dart';
import 'package:ncast/widgets/onboard_screen/sign_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenCubitCubit()..loadPromotedPodcasts(),
        ),
        BlocProvider(
          create: (context) => ExploreScreenCubit()..loadedPodcasts(),
        ),
        BlocProvider(
            create: (context) => FavouriteScreenCubit()..loadedPodcasts()),
        BlocProvider(create: (context) => BottomNavigatorBloc()),
        BlocProvider(
            create: (context) => ProfileScreenCubit()..loadedPodcasts()),
      ],
      child: Scaffold(
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
              padding: const EdgeInsets.only(right: 25.0, top: 13),
              child: IconButton(
                  onPressed: () async {
                    await auth.signOut();
                    await GoogleSignIn().signOut();
                  },
                  icon: const Icon(
                    Icons.logout,
                    size: 30,
                  )),
            )
          ],
        ),
        body: Stack(
          children: [
            Builder(builder: (context) {
              return PageView(
                onPageChanged: (value) {
                  if (value == 0) {
                    context.read<BottomNavigatorBloc>().add(HomeScreenTap());
                  }
                  if (value == 1) {
                    context.read<BottomNavigatorBloc>().add(ExploreScreenTap());
                  }
                  if (value == 2) {
                    context
                        .read<BottomNavigatorBloc>()
                        .add(FavouriteScreenTap());
                  }
                  if (value == 3) {
                    context.read<ProfileScreenCubit>().loadedPodcasts();
                    context.read<BottomNavigatorBloc>().add(ProfileScreenTap());
                  }
                },
                controller: controller,
                children: const [
                  HeadphoneScreen(),
                  ExploreScreen(),
                  FavouriteScreen(),
                  ProfileScreen()
                ],
              );
            }),
            Positioned(
              top: 700,
              left: 20,
              right: 20,
              child: BottomNavigator(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
