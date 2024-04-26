class StringUtils {
  StringUtils._();
  static bool isEqual(String? val1, String? val2) {
    return val1?.trim().toLowerCase() == val2?.trim().toLowerCase();
  }

  static bool isMatchSearch(String name, String query) {
    final name0 = name.toLowerCase();
    final query0 = query.toLowerCase();
    return name0.contains(query0);
  }

  static bool isMatchAllSearch(List<String> names, String query) {
    for (final name in names) {
      if (isMatchSearch(name, query)) {
        return true;
      }
    }
    return false;
  }
}
