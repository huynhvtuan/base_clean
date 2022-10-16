/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsAnimationGen {
  const $AssetsAnimationGen();

  /// File path: assets/animation/chart.json
  String get chart => 'assets/animation/chart.json';

  /// File path: assets/animation/empty.json
  String get empty => 'assets/animation/empty.json';

  /// File path: assets/animation/error.json
  String get error => 'assets/animation/error.json';

  /// File path: assets/animation/loading.json
  String get loading => 'assets/animation/loading.json';

  /// File path: assets/animation/maintenance.json
  String get maintenance => 'assets/animation/maintenance.json';

  /// File path: assets/animation/success.json
  String get success => 'assets/animation/success.json';
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en-US.json
  String get enUS => 'assets/translations/en-US.json';

  /// File path: assets/translations/vi-VN.json
  String get viVN => 'assets/translations/vi-VN.json';
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/be-careful-6.svg
  String get beCareful6 => 'assets/images/icons/be-careful-6.svg';

  /// File path: assets/images/icons/icons8-facebook-96.png
  AssetGenImage get icons8Facebook96 =>
      const AssetGenImage('assets/images/icons/icons8-facebook-96.png');

  /// File path: assets/images/icons/icons8-google-96.png
  AssetGenImage get icons8Google96 =>
      const AssetGenImage('assets/images/icons/icons8-google-96.png');

  /// File path: assets/images/icons/logo.svg
  String get logo => 'assets/images/icons/logo.svg';
}

class Assets {
  Assets._();

  static const $AssetsAnimationGen animation = $AssetsAnimationGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}
