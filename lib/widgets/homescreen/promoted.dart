import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncast/cubit/home_screen_cubit_cubit.dart';

class Promoted extends StatelessWidget {
  const Promoted({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: 400,
      child: BlocBuilder<HomeScreenCubitCubit, HomeScreenCubitState>(
        builder: (context, state) {
          if (state is HomeScreenLoadFailed) {
            debugPrint('Handle error case');
          }

          if (state is HomeScreenLoaded) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.promotedPodcasts.length,
                itemBuilder: (ctx, index) {
                  final promotedPodcast = state.promotedPodcasts[index];

                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 15,
                    ),
                    child: Image.asset(
                      promotedPodcast.imagepath,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
