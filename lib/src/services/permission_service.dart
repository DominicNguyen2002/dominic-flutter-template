import 'package:dominic_flutter_template/src/configs/devices/app_info.dart';
import 'package:dominic_flutter_template/src/dialogs/alert_wrapper.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  static Future<bool> requestMicrophonePermission({
    bool openSetting = true,
  }) async {
    var status = await Permission.microphone.request();
    if (status.isDenied || status.isPermanentlyDenied) {
      final show = await XAlert.showConfirmDialog(
        "${S.text.permission_allow} ${AppInfo.package.appName} ${S.text.permission_access_microphone}",
        S.text.permission_grant_permission_microphone,
      );
      if (show == true) {
        openAppSettings();
      }
      return false;
    }
    return true;
  }
}
