import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ncast/model/podcast_list.dart';
import 'package:ncast/model/promoted_podcast.dart';

final db = FirebaseFirestore.instance;
void addTrendingPodcast() {
  for (final podcast in trendingPodcast) {
    final image1 = {
      'createAt': Timestamp.now(),
      'duration': podcast.duration,
      'subtitle': podcast.subtitle,
      'title': podcast.title
    };

    db.collection("podcasts").add(image1);
  }
}

List<TrendingPodcast> trending = [];

Future<List<TrendingPodcast>> getTrendingPodcast() async {
  await db
      .collection('trendingPodcast')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      trending.add(TrendingPodcast(
          imagepath: doc.data()['imagepath'],
          duration: doc.data()['duration'],
          subtitle: doc.data()['subtitle'],
          title: doc.data()['title']));
    }
  });
  return trending;
}

void addPromotedPodcast() {
  for (final podcast in promatedPodcast) {
    final image1 = {
      'imagepath': podcast.imagepath,
      'createAt': Timestamp.now(),
    };

    db.collection("promotedPodcast").add(image1);
  }
}

List<PromotedPodcast> promoted = [];

Future<List<PromotedPodcast>> getPromotedPodcast() async {
  await db
      .collection('promotedPodcast')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      promoted.add(
        PromotedPodcast(imagepath: doc.data()['imagepath']),
      );
    }
  });
  return promoted;
}

void addTopTrending() {
  for (final podcast in topTrending) {
    final image1 = {
      'imagepath': podcast.imagepath,
      'createAt': Timestamp.now(),
      'duration': podcast.duration,
      'subtitle': podcast.subtitle,
      'title': podcast.title
    };

    db.collection("podcasts").add(image1);
  }
}

List<TrendingPodcast> toptrending = [];
Future<List<TrendingPodcast>> getTopTrending() async {
  await db.collection('topTrending').orderBy('createAt').get().then((event) {
    for (var doc in event.docs) {
      toptrending.add(TrendingPodcast(
          imagepath: doc.data()['imagepath'],
          duration: doc.data()['duration'],
          subtitle: doc.data()['subtitle'],
          title: doc.data()['title']));
    }
  });
  return toptrending;
}

void addTopPromoted() {
  for (final podcast in topPodcast) {
    final image1 = {
      'imagepath': podcast.imagepath,
      'createAt': Timestamp.now(),
    };

    db.collection("topPromoted").add(image1);
  }
}

List<TopPodcast> toppromoted = [];

Future<List<TopPodcast>> gettopPromoted() async {
  await db.collection('topPromoted').orderBy('createAt').get().then((event) {
    for (var doc in event.docs) {
      toppromoted.add(
        TopPodcast(imagepath: doc.data()['imagepath']),
      );
    }
  });
  return toppromoted;
}

void addFavouritePodcasts() {
  for (final podcast in favouritePodcast) {
    final image1 = {
      'imageUrl': "",
      'createAt': Timestamp.now(),
      'duration': podcast.duration,
      'subtitle': podcast.subtitle,
      'title': podcast.title
    };

    db.collection("podcasts").add(image1);
  }
}

List<TrendingPodcast> favourites = [];
Future<List<TrendingPodcast>> getFavouritePodcasts() async {
  await db
      .collection('favouritesPodcast')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      favourites.add(TrendingPodcast(
          imagepath: doc.data()['imagepath'],
          duration: doc.data()['duration'],
          subtitle: doc.data()['subtitle'],
          title: doc.data()['title']));
    }
  });
  return favourites;
}

void addRecentPlayedPodcasts() {
  for (final podcast in recentlyPlayed) {
    final image1 = {
      'imagepath': podcast.imagepath,
      'createAt': Timestamp.now(),
      'duration': podcast.durationRemaining,
      'title': podcast.title
    };

    db.collection("recentlyPlayedPodcast").add(image1);
  }
}

List<RecentlyPlayedPodcast> recentlyplayed = [];
Future<List<RecentlyPlayedPodcast>> getRecentlyPlayedPodcast() async {
  await db
      .collection('recentlyPlayedPodcast')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      recentlyplayed.add(RecentlyPlayedPodcast(
          imagepath: doc.data()['imagepath'],
          durationRemaining: doc.data()['duration'],
          title: doc.data()['title']));
    }
  });
  return recentlyplayed;
}

void addTrendingScreen() {
  // for (final podcast in trendingScreen) {
  //   final image1 = {
  //     'imagepath': podcast.imagepath,
  //     'createAt': Timestamp.now(),
  //     'duration': podcast.duration,
  //     'subtitle': podcast.subtitle,
  //     'title': podcast.title
  //   };
  //   db.collection("trendingScreenPodcast").add(image1);
  // }

  for (final podcast in recommendedTrending) {
    final image2 = {
      'imageUrl': '',
      'createAt': Timestamp.now(),
      'duration': podcast.duration,
      'subtitle': podcast.subtitle,
      'title': podcast.title
    };

    db.collection("podcasts").add(image2);
  }
}

List<TrendingPodcast> trendingscreen = [];
List<TrendingPodcast> recommmendedtrending = [];
Future<List<TrendingPodcast>> getTrendingScreen() async {
  await db
      .collection('trendingScreenPodcast')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      trendingscreen.add(TrendingPodcast(
          imagepath: doc.data()['imagepath'],
          duration: doc.data()['duration'],
          subtitle: doc.data()['subtitle'],
          title: doc.data()['title']));
    }
  });
  return trendingscreen;
}

Future<List<TrendingPodcast>> getRecommmendedPodcast() async {
  await db
      .collection('recommendedTrending')
      .orderBy('createAt')
      .get()
      .then((event) {
    for (var doc in event.docs) {
      recommmendedtrending.add(TrendingPodcast(
          imagepath: doc.data()['imagepath'],
          duration: doc.data()['duration'],
          subtitle: doc.data()['subtitle'],
          title: doc.data()['title']));
    }
  });
  return recommmendedtrending;
}
