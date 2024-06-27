import 'package:flutter/widgets.dart';
import 'package:ncast/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DummyPromoted extends StatelessWidget {
  const DummyPromoted({super.key});
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 15,
            ),
            child: Image.asset(
              Assets.images.promotedPodcast.podcastShow.path,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
