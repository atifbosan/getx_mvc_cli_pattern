import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerPermissionService {
  static Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.phone.request();
  }

  Future<bool> handlePhotosPermission() async {
    PermissionStatus photosPermissionStatus = await requestPhotosPermission();
    if (photosPermissionStatus != PermissionStatus.granted) {
      return false;
    }
    return true;
  }
}
