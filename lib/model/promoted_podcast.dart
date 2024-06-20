class PromotedPodcast {
  const PromotedPodcast({required this.imagepath});
  final String imagepath;
}

class TopPodcast {
  const TopPodcast({required this.imagepath});
  final String imagepath;
}

class TrendingPodcast {
  const TrendingPodcast({
    required this.imagepath,
    required this.duration,
    required this.subtitle,
    required this.title,
  });
  final String imagepath;
  final String title;
  final String subtitle;
  final String duration;
}
