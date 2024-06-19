/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_bar.svg
  String get appBar => 'assets/images/app_bar.svg';

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// Directory path: assets/images/icon
  $AssetsImagesIconGen get icon => const $AssetsImagesIconGen();

  /// File path: assets/images/mic.png
  AssetGenImage get mic => const AssetGenImage('assets/images/mic.png');

  /// File path: assets/images/ncast_1.svg
  String get ncast1 => 'assets/images/ncast_1.svg';

  /// File path: assets/images/ncast_2.svg
  String get ncast2 => 'assets/images/ncast_2.svg';

  /// File path: assets/images/notifiaction.svg
  String get notifiaction => 'assets/images/notifiaction.svg';

  /// File path: assets/images/notification_icon.svg
  String get notificationIcon => 'assets/images/notification_icon.svg';

  /// Directory path: assets/images/promoted_podcast
  $AssetsImagesPromotedPodcastGen get promotedPodcast =>
      const $AssetsImagesPromotedPodcastGen();

  /// Directory path: assets/images/trending_podcast
  $AssetsImagesTrendingPodcastGen get trendingPodcast =>
      const $AssetsImagesTrendingPodcastGen();

  /// List of all assets
  List<dynamic> get values =>
      [appBar, background, mic, ncast1, ncast2, notifiaction, notificationIcon];
}

class $AssetsImagesIconGen {
  const $AssetsImagesIconGen();

  /// File path: assets/images/icon/compass.svg
  String get compass => 'assets/images/icon/compass.svg';

  /// File path: assets/images/icon/contact.svg
  String get contact => 'assets/images/icon/contact.svg';

  /// File path: assets/images/icon/headphones.svg
  String get headphones => 'assets/images/icon/headphones.svg';

  /// File path: assets/images/icon/heart.svg
  String get heart => 'assets/images/icon/heart.svg';

  /// File path: assets/images/icon/play.svg
  String get play => 'assets/images/icon/play.svg';

  /// File path: assets/images/icon/play_background.svg
  String get playBackground => 'assets/images/icon/play_background.svg';

  /// File path: assets/images/icon/search.svg
  String get search => 'assets/images/icon/search.svg';

  /// List of all assets
  List<String> get values =>
      [compass, contact, headphones, heart, play, playBackground, search];
}

class $AssetsImagesPromotedPodcastGen {
  const $AssetsImagesPromotedPodcastGen();

  /// File path: assets/images/promoted_podcast/podcast_show.png
  AssetGenImage get podcastShow =>
      const AssetGenImage('assets/images/promoted_podcast/podcast_show.png');

  /// File path: assets/images/promoted_podcast/task_podcast.png
  AssetGenImage get taskPodcast =>
      const AssetGenImage('assets/images/promoted_podcast/task_podcast.png');

  /// List of all assets
  List<AssetGenImage> get values => [podcastShow, taskPodcast];
}

class $AssetsImagesTrendingPodcastGen {
  const $AssetsImagesTrendingPodcastGen();

  /// File path: assets/images/trending_podcast/festival.png
  AssetGenImage get festival =>
      const AssetGenImage('assets/images/trending_podcast/festival.png');

  /// File path: assets/images/trending_podcast/see.png
  AssetGenImage get see =>
      const AssetGenImage('assets/images/trending_podcast/see.png');

  /// File path: assets/images/trending_podcast/time.png
  AssetGenImage get time =>
      const AssetGenImage('assets/images/trending_podcast/time.png');

  /// List of all assets
  List<AssetGenImage> get values => [festival, see, time];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
