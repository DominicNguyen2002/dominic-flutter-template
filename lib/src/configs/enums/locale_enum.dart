import 'dart:ui';

import 'package:dominic_flutter_template/gen/assets.gen.dart';

enum LocaleEnum {
  en(
    label: 'EN',
    value: Locale('en'),
  ),
  vi(
    label: 'VI',
    value: Locale('vi'),
  ),
  ;

  final String label;
  final Locale value;

  const LocaleEnum({
    required this.label,
    required this.value,
  });

  static LocaleEnum fromValue(Locale value) {
    return values.firstWhere((element) => element.value == value,
        orElse: () => en);
  }

  String get image {
    switch (this) {
      case en:
        return Assets.images.locale.en.path;
      case vi:
        return Assets.images.locale.vi.path;
    }
  }
}
