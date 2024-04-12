part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  final ThemeMode themeMode;

  const SettingsState({
    this.themeMode = ThemeMode.system,
  });

  factory SettingsState.ds() =>
      SettingsState(themeMode: SharedPrefs.instance.getTheme());

  @override
  List<Object?> get props => [themeMode];

  SettingsState copyWith({
    ThemeMode? themeMode,
  }) {
    return SettingsState(
      themeMode: themeMode ?? this.themeMode,
    );
  }
}
