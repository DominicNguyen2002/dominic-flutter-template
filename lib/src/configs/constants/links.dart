import 'dart:io';

import 'package:dominic_flutter_template/src/configs/devices/app_info.dart';

class XLink {
  static get playStore => 'market://details?id=${AppInfo.package.packageName}';
  static const appStore = 'https://apps.apple.com/app/idTODO';
  static get storeOf => Platform.isAndroid ? playStore : appStore;
}
