const String _assetsPath = 'assets';
const String _iconsPath = '/icons';
const String _imagesPath = '/images';

class IconsAssets {
  IconsAssets._();
  static final IconsAssets _instance = IconsAssets._();
  factory IconsAssets() => _instance;
  final String appIcon = '$_assetsPath$_iconsPath/app_icon.png';
  final String appIconIos = '$_assetsPath$_iconsPath/app_icon_ios.jpg';
}

class ImagesAssets {
  ImagesAssets._();
  static final ImagesAssets _instance = ImagesAssets._();
  factory ImagesAssets() => _instance;
  final String flutterLogo = '$_assetsPath$_imagesPath/flutter_logo.png';
}
