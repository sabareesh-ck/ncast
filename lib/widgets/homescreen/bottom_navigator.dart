import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ncast/bloc/bottom_navigator_bloc.dart';
import 'package:ncast/gen/assets.gen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key, required this.controller});
  final PageController controller;

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  @override
  void initState() {
    super.initState();
    context.read<BottomNavigatorBloc>().add(HomeScreenTap());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigatorBloc, BottomNavigatorState>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          height: 100,
          width: 500,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 72,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: const Color(0xFF4C0099).withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.controller.animateToPage(0,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                        return context
                            .read<BottomNavigatorBloc>()
                            .add(HomeScreenTap());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(state.icon1),
                          const SizedBox(
                            height: 5,
                          ),
                          if (state is BottomNavigatorInitial ||
                              state is BottomNavigatorHome)
                            SvgPicture.asset(Assets.images.icon.dot)
                          else
                            const SizedBox.shrink()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.controller.animateToPage(1,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                        return context
                            .read<BottomNavigatorBloc>()
                            .add(ExploreScreenTap());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(state.icon2),
                          const SizedBox(
                            height: 5,
                          ),
                          if (state is BottomNavigatorExplore)
                            SvgPicture.asset(Assets.images.icon.dot)
                          else
                            const SizedBox.shrink()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.controller.animateToPage(2,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                        return context
                            .read<BottomNavigatorBloc>()
                            .add(FavouriteScreenTap());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(state.icon3),
                          const SizedBox(
                            height: 5,
                          ),
                          if (state is BottomNavigatorFavourite)
                            SvgPicture.asset(Assets.images.icon.dot)
                          else
                            const SizedBox.shrink()
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.controller.animateToPage(3,
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                        return context
                            .read<BottomNavigatorBloc>()
                            .add(ProfileScreenTap());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(state.icon4),
                          const SizedBox(
                            height: 5,
                          ),
                          if (state is BottomNavigatorProfile)
                            SvgPicture.asset(Assets.images.icon.dot)
                          else
                            const SizedBox.shrink()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
