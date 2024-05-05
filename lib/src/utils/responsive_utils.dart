import 'package:dominic_flutter_template/src/themes/screen.dart';

class ResponsiveUtils {
  static bool isSmallScreen() {
    return AppScreens.width < 600;
  }

  static bool isMediumScreen() {
    return AppScreens.width >= 600 && AppScreens.width < 1200;
  }

  static bool isLargeScreen() {
    return AppScreens.width >= 1200;
  }

  static bool isLandscapeScreen() {
    return AppScreens.width > AppScreens.height;
  }
}
