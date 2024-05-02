part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final ThemeMode themeMode;
  final bool safeArea;
  final Locale locale;

  const SettingsState({
    this.themeMode = ThemeMode.system,
    this.safeArea = true,
    this.locale = const Locale('en'),
  });

  factory SettingsState.ds() => SettingsState(
        themeMode: SharedPrefs.I.getTheme(),
        safeArea: SharedPrefs.I.getSafeArea(),
        locale: SharedPrefs.I.getLocale(),
      );

  @override
  List<Object?> get props => [themeMode, safeArea, locale];

  SettingsState copyWith({
    ThemeMode? themeMode,
    bool? safeArea,
    Locale? locale,
  }) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
      safeArea: safeArea ?? this.safeArea,
      locale: locale ?? this.locale,
    );
  }
}
