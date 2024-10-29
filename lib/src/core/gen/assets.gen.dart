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

  /// Directory path: assets/icons/create
  $AssetsIconsCreateGen get create => const $AssetsIconsCreateGen();

  /// Directory path: assets/icons/nav_bar
  $AssetsIconsNavBarGen get navBar => const $AssetsIconsNavBarGen();

  /// Directory path: assets/icons/reactions
  $AssetsIconsReactionsGen get reactions => const $AssetsIconsReactionsGen();
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/logo/logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [logo];
}

class $AssetsIconsCreateGen {
  const $AssetsIconsCreateGen();

  /// File path: assets/icons/create/camera.svg
  SvgGenImage get camera => const SvgGenImage('assets/icons/create/camera.svg');

  /// File path: assets/icons/create/image.svg
  SvgGenImage get image => const SvgGenImage('assets/icons/create/image.svg');

  /// File path: assets/icons/create/map.svg
  SvgGenImage get map => const SvgGenImage('assets/icons/create/map.svg');

  /// File path: assets/icons/create/video.svg
  SvgGenImage get video => const SvgGenImage('assets/icons/create/video.svg');

  /// List of all assets
  List<SvgGenImage> get values => [camera, image, map, video];
}

class $AssetsIconsNavBarGen {
  const $AssetsIconsNavBarGen();

  /// File path: assets/icons/nav_bar/add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/nav_bar/add.svg');

  /// File path: assets/icons/nav_bar/add_filled.svg
  SvgGenImage get addFilled =>
      const SvgGenImage('assets/icons/nav_bar/add_filled.svg');

  /// File path: assets/icons/nav_bar/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icons/nav_bar/bell.svg');

  /// File path: assets/icons/nav_bar/bell_filled.svg
  SvgGenImage get bellFilled =>
      const SvgGenImage('assets/icons/nav_bar/bell_filled.svg');

  /// File path: assets/icons/nav_bar/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/nav_bar/home.svg');

  /// File path: assets/icons/nav_bar/home_filled.svg
  SvgGenImage get homeFilled =>
      const SvgGenImage('assets/icons/nav_bar/home_filled.svg');

  /// File path: assets/icons/nav_bar/map.svg
  SvgGenImage get map => const SvgGenImage('assets/icons/nav_bar/map.svg');

  /// File path: assets/icons/nav_bar/map_filled.svg
  SvgGenImage get mapFilled =>
      const SvgGenImage('assets/icons/nav_bar/map_filled.svg');

  /// File path: assets/icons/nav_bar/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/nav_bar/user.svg');

  /// File path: assets/icons/nav_bar/user_filled.svg
  SvgGenImage get userFilled =>
      const SvgGenImage('assets/icons/nav_bar/user_filled.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        add,
        addFilled,
        bell,
        bellFilled,
        home,
        homeFilled,
        map,
        mapFilled,
        user,
        userFilled
      ];
}

class $AssetsIconsReactionsGen {
  const $AssetsIconsReactionsGen();

  /// File path: assets/icons/reactions/comment.svg
  SvgGenImage get comment =>
      const SvgGenImage('assets/icons/reactions/comment.svg');

  /// File path: assets/icons/reactions/comment_filled.svg
  SvgGenImage get commentFilled =>
      const SvgGenImage('assets/icons/reactions/comment_filled.svg');

  /// File path: assets/icons/reactions/like.svg
  SvgGenImage get like => const SvgGenImage('assets/icons/reactions/like.svg');

  /// File path: assets/icons/reactions/like_filled.svg
  SvgGenImage get likeFilled =>
      const SvgGenImage('assets/icons/reactions/like_filled.svg');

  /// File path: assets/icons/reactions/share.svg
  SvgGenImage get share =>
      const SvgGenImage('assets/icons/reactions/share.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [comment, commentFilled, like, likeFilled, share];
}

class Assets {
  Assets._();

  static const String aEnv = '.env';
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

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
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
