import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.text.settings),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: DropdownButton<ThemeMode>(
              value: state.themeMode,
              onChanged: context.read<SettingsBloc>().onChangeTheme,
              items: [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text(S.text.settings_system_theme),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text(S.text.settings_light_theme),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text(S.text.settings_dark_theme),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
