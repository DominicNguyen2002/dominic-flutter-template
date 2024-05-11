import 'package:uuid/uuid.dart';

class UUIDHelper {
  static String generate() {
    var uuid = const Uuid();
    return uuid.v4();
  }
}
