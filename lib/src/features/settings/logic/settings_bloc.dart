import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dominic_flutter_template/src/services/shared_prefs.dart';

part 'settings_state.dart';

class SettingsBloc extends Cubit<SettingsState> {
  SettingsBloc() : super(SettingsState.ds());

  void onChangeTheme(ThemeMode? mode) {
    if (mode != null) {
      emit(state.copyWith(themeMode: mode));
      SharedPrefs.instance.setTheme(mode);
    }
  }

  void onChangeSafeArea(bool? safeArea) {
    if (safeArea != null) {
      emit(state.copyWith(safeArea: safeArea));
      SharedPrefs.instance.setSafeArea(safeArea);
    }
  }

  void onChangeLocale(Locale? locale) {
    if (locale != null) {
      emit(state.copyWith(locale: locale));
      SharedPrefs.instance.setLocale(locale);
    }
  }
}
