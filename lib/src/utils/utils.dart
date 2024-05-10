class Utils {
  Utils._();

  List<T> listOf<T>(dynamic map, T Function(dynamic e) toElement) {
    if (map != null && map is List) {
      return map.map(toElement).toList();
    }
    return [];
  }

  static String fullnameOf(
    String? first,
    String? last, {
    String separated = ' ',
  }) {
    if (first?.isNotEmpty != true) {
      return last ?? '';
    }
    if (last?.isNotEmpty != true) {
      return first!;
    }
    return '$first$separated$last';
  }
}

bool isNullOrEmpty(Object? object) {
  if (object == null) {
    return true;
  }
  if (object is String) {
    return object.trim().isEmpty;
  }
  if (object is Iterable) {
    return object.isEmpty;
  }
  if (object is Map) {
    return object.isEmpty;
  }
  return false;
}
