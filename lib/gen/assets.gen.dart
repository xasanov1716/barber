/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple.svg
  SvgGenImage get apple => const SvgGenImage('assets/icons/apple.svg');

  /// File path: assets/icons/arrow_back.svg
  SvgGenImage get arrowBack => const SvgGenImage('assets/icons/arrow_back.svg');

  /// File path: assets/icons/bank_card.svg
  SvgGenImage get bankCard => const SvgGenImage('assets/icons/bank_card.svg');

  /// File path: assets/icons/edit.svg
  SvgGenImage get edit => const SvgGenImage('assets/icons/edit.svg');

  /// File path: assets/icons/explore.svg
  SvgGenImage get explore => const SvgGenImage('assets/icons/explore.svg');

  /// File path: assets/icons/facebook.svg
  SvgGenImage get facebook => const SvgGenImage('assets/icons/facebook.svg');

  /// File path: assets/icons/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icons/filter.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/lock.svg
  SvgGenImage get lock => const SvgGenImage('assets/icons/lock.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/icons/mail.svg');

  /// File path: assets/icons/message.svg
  SvgGenImage get message => const SvgGenImage('assets/icons/message.svg');

  /// File path: assets/icons/more.svg
  SvgGenImage get more => const SvgGenImage('assets/icons/more.svg');

  /// File path: assets/icons/my_booking.svg
  SvgGenImage get myBooking => const SvgGenImage('assets/icons/my_booking.svg');

  /// File path: assets/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/notification.svg');

  /// File path: assets/icons/on_boarding_one.svg
  SvgGenImage get onBoardingOne =>
      const SvgGenImage('assets/icons/on_boarding_one.svg');

  /// File path: assets/icons/on_boarding_third.svg
  SvgGenImage get onBoardingThird =>
      const SvgGenImage('assets/icons/on_boarding_third.svg');

  /// File path: assets/icons/on_boarding_two.svg
  SvgGenImage get onBoardingTwo =>
      const SvgGenImage('assets/icons/on_boarding_two.svg');

  /// File path: assets/icons/pin.svg
  SvgGenImage get pin => const SvgGenImage('assets/icons/pin.svg');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');

  /// File path: assets/icons/saved.svg
  SvgGenImage get saved => const SvgGenImage('assets/icons/saved.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/union.svg
  SvgGenImage get union => const SvgGenImage('assets/icons/union.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    apple,
    arrowBack,
    bankCard,
    edit,
    explore,
    facebook,
    filter,
    google,
    home,
    location,
    lock,
    logo,
    mail,
    message,
    more,
    myBooking,
    notification,
    onBoardingOne,
    onBoardingThird,
    onBoardingTwo,
    pin,
    profile,
    saved,
    search,
    union,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bella.png
  AssetGenImage get bella => const AssetGenImage('assets/images/bella.png');

  /// File path: assets/images/haircuts.png
  AssetGenImage get haircuts =>
      const AssetGenImage('assets/images/haircuts.png');

  /// File path: assets/images/login_image.png
  AssetGenImage get loginImage =>
      const AssetGenImage('assets/images/login_image.png');

  /// File path: assets/images/make.png
  AssetGenImage get make => const AssetGenImage('assets/images/make.png');

  /// File path: assets/images/manicure.png
  AssetGenImage get manicure =>
      const AssetGenImage('assets/images/manicure.png');

  /// File path: assets/images/massage.png
  AssetGenImage get massage => const AssetGenImage('assets/images/massage.png');

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/welcome.png
  AssetGenImage get welcome => const AssetGenImage('assets/images/welcome.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bella,
    haircuts,
    loginImage,
    make,
    manicure,
    massage,
    star,
    welcome,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}


