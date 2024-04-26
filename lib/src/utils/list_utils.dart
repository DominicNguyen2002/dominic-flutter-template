class ListUtils {
  ListUtils._();
  static List<T> toggleListElement<T>(List<T> list, T value) {
    final List<T> newList = List.from(list);
    if (newList.contains(value)) {
      newList.remove(value);
    } else {
      newList.add(value);
    }
    return newList;
  }

  static List<List<T>> splice<T>(List<T> list, int number) {
    if (list.isEmpty) {
      return [];
    }
    final spliceNumber = number < 1 ? 1 : number;
    if (spliceNumber > list.length) {
      return [list];
    }
    final int count = list.length ~/ spliceNumber;
    final List<List<T>> result = [];
    for (int i = 0; i < count; i++) {
      final index = i * spliceNumber;
      result.add(list.sublist(index, index + spliceNumber));
    }
    if (list.length % spliceNumber != 0) {
      result.add(list.sublist(count * spliceNumber));
    }
    return result;
  }
}
