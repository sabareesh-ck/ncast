import 'package:ncast/model/promoted_podcast.dart';

const List<PromotedPodcast> promatedPodcast = [
  PromotedPodcast(imagepath: 'assets/images/promoted_podcast/task_podcast.png'),
  PromotedPodcast(imagepath: 'assets/images/promoted_podcast/podcast_show.png'),
];
// const List<TrendingPodcast> topTrending = [
//   TrendingPodcast(
//       imagepath: 'assets/images/top_trending/podcast.png',
//       duration: '22 min',
//       subtitle: 'Socially Buzzed',
//       title: 'Enjoy it'),
//   TrendingPodcast(
//       imagepath: 'assets/images/top_trending/talk_session.png',
//       duration: '12 min',
//       subtitle: 'Business',
//       title: 'Grow with us'),
//   TrendingPodcast(
//       imagepath: 'assets/images/top_trending/question.png',
//       duration: '30 min',
//       subtitle: 'Educational',
//       title: 'Crack the Interview'),
//   TrendingPodcast(
//       imagepath: 'assets/images/top_trending/psycology.png',
//       duration: '15 min',
//       subtitle: 'Motivational',
//       title: 'Mindfulness'),
// ];
// const List<TrendingPodcast> trendingPodcast = [
//   TrendingPodcast(
//       imagepath: 'assets/images/trending_podcast/see.png',
//       duration: '15 min',
//       subtitle: 'Creative Studio',
//       title: 'See Mama Be'),
//   TrendingPodcast(
//       imagepath: 'assets/images/trending_podcast/festival.png',
//       duration: '10 min',
//       subtitle: 'Rock Electrics',
//       title: 'Festival on the Beach'),
//   TrendingPodcast(
//       imagepath: 'assets/images/trending_podcast/time.png',
//       duration: '25 min',
//       subtitle: 'Educational',
//       title: 'Your Time'),
//   TrendingPodcast(
//       imagepath: 'assets/images/trending_podcast/festival.png',
//       duration: '10 min',
//       subtitle: 'Rock Electrics',
//       title: 'Festival on the Beach'),
//   TrendingPodcast(
//       imagepath: 'assets/images/trending_podcast/time.png',
//       duration: '25 min',
//       subtitle: 'Educational',
//       title: 'Your Time')
// ];
const List<TopPodcast> topPodcast = [
  TopPodcast(imagepath: 'assets/images/top_podcast/talk.png'),
  TopPodcast(imagepath: 'assets/images/top_podcast/writing.png')
];
// const List<TrendingPodcast> favouritePodcast = [
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_1.png',
//       duration: '15 min',
//       subtitle: 'Entertainment',
//       title: 'Sunday Summer - Ep3'),
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_2.png',
//       duration: '35 min',
//       subtitle: 'Lifestyle',
//       title: 'Musical Soul - Vol. 1'),
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_3.png',
//       duration: '20 min',
//       subtitle: 'Business',
//       title: 'Talk Show - Ep4'),
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_4.png',
//       duration: '30 min',
//       subtitle: 'Lifestyle',
//       title: 'Musical Soul - Vol. 2'),
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_5.png',
//       duration: '10 min',
//       subtitle: 'Healthy Lifestyle',
//       title: 'Unravelling The Mind'),
//   TrendingPodcast(
//       imagepath: 'assets/images/favourite/image_6.png',
//       duration: '20 min',
//       subtitle: 'Enterainment',
//       title: 'Talk Show - Ep8')
// ];
List<TrendingPodcast> trendingScreen = const [
  TrendingPodcast(
    id: "",
    imagepath: 'assets/images/trending_screen/image_1.png',
    duration: '15 min',
    subtitle: 'Business',
    title: 'Mind of an Enterprenuer',
  ),
  TrendingPodcast(
      id: "",
      imagepath: 'assets/images/trending_screen/image_2.png',
      duration: '10 min',
      subtitle: 'Healthy Lifestyle',
      title: 'Unravelling The Mind'),
  TrendingPodcast(
      id: "",
      imagepath: 'assets/images/trending_screen/image_3.png',
      duration: '25 min',
      subtitle: 'Educational',
      title: 'A Tale of Writer'),
  TrendingPodcast(
      id: "",
      imagepath: 'assets/images/trending_screen/image_4.png',
      duration: '10 min',
      subtitle: 'Sociology',
      title: 'Addiction to Social!'),
];
List<TrendingPodcast> recommendedTrending = const [
  TrendingPodcast(
      id: "",
      imagepath: 'assets/images/trending_screen/recommended/image_1.png',
      duration: '10 min',
      subtitle: 'Health & Lifestyle',
      title: 'Mind map'),
  TrendingPodcast(
      id: "",
      imagepath: 'assets/images/trending_screen/recommended/image_2.png',
      duration: '15 min',
      subtitle: 'Investigation Theories',
      title: 'True Crime')
];

List<RecentlyPlayedPodcast> recentlyPlayed = const [
  RecentlyPlayedPodcast(
      imagepath: 'assets/images/profile/recently_played/image_1.png',
      title: 'True Crime',
      durationRemaining: '20'),
  RecentlyPlayedPodcast(
      imagepath: 'assets/images/profile/recently_played/image_2.png',
      title: 'See Radio',
      durationRemaining: '35'),
  RecentlyPlayedPodcast(
      imagepath: 'assets/images/top_trending/psycology.png',
      title: 'The Psycology',
      durationRemaining: '15')
];
