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

  $AssetsImagesLocaleGen get locale => const $AssetsImagesLocaleGen();
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/checking-animation.json
  String get checkingAnimation => 'assets/lotties/checking-animation.json';

  /// File path: assets/lotties/loading-image-animation.json
  String get loadingImageAnimation =>
      'assets/lotties/loading-image-animation.json';

  /// File path: assets/lotties/page-not-found-dark-animation.json
  String get pageNotFoundDarkAnimation =>
      'assets/lotties/page-not-found-dark-animation.json';

  /// File path: assets/lotties/page-not-found-light-animation.json
  String get pageNotFoundLightAnimation =>
      'assets/lotties/page-not-found-light-animation.json';

  /// List of all assets
  List<String> get values => [
        checkingAnimation,
        loadingImageAnimation,
        pageNotFoundDarkAnimation,
        pageNotFoundLightAnimation
      ];
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/icon_apple.svg
  String get iconApple => 'assets/svgs/icon_apple.svg';

  /// File path: assets/svgs/icon_facebook.svg
  String get iconFacebook => 'assets/svgs/icon_facebook.svg';

  /// File path: assets/svgs/icon_google.svg
  String get iconGoogle => 'assets/svgs/icon_google.svg';

  /// File path: assets/svgs/state_empty.svg
  String get stateEmpty => 'assets/svgs/state_empty.svg';

  /// File path: assets/svgs/state_empty_map.svg
  String get stateEmptyMap => 'assets/svgs/state_empty_map.svg';

  /// File path: assets/svgs/state_empty_notification.svg
  String get stateEmptyNotification =>
      'assets/svgs/state_empty_notification.svg';

  /// File path: assets/svgs/state_error.svg
  String get stateError => 'assets/svgs/state_error.svg';

  /// List of all assets
  List<String> get values => [
        iconApple,
        iconFacebook,
        iconGoogle,
        stateEmpty,
        stateEmptyMap,
        stateEmptyNotification,
        stateError
      ];
}

class $AssetsImagesLocaleGen {
  const $AssetsImagesLocaleGen();

  /// File path: assets/images/locale/en.png
  AssetGenImage get en => const AssetGenImage('assets/images/locale/en.png');

  /// File path: assets/images/locale/vi.png
  AssetGenImage get vi => const AssetGenImage('assets/images/locale/vi.png');

  /// List of all assets
  List<AssetGenImage> get values => [en, vi];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
