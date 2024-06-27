import 'package:flutter/material.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DummyGridview extends StatelessWidget {
  const DummyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    List dummytrending = const [1, 2, 3, 4];
    return Skeletonizer(
      enabled: true,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          mainAxisSpacing: 19,
        ),
        children: [
          // ignore: unused_local_variable
          for (final count in dummytrending)
            SizedBox(
              height: 150,
              width: 174,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.images.trendingScreen.image1.path,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'podcast.title',
                  ),
                  const Text(
                    'podcast.subtitle',
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
