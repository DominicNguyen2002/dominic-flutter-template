import 'package:dominic_flutter_template/src/configs/enums/locale_enum.dart';
import 'package:dominic_flutter_template/src/configs/enums/safe_area_enum.dart';
import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/widgets/scaffold/scaffold.dart';
import 'package:dominic_flutter_template/widgets/state/state_empty_widget.dart';
import 'package:dominic_flutter_template/widgets/state/state_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (BuildContext context, state) {
        return XScaffold(
          appBar: AppBar(
            title: Text(S.text.settings),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
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
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: DropdownButton<bool>(
                    value: state.safeArea,
                    onChanged: context.read<SettingsBloc>().onChangeSafeArea,
                    items: [
                      DropdownMenuItem(
                        value: SafeAreaEnum.enable.value,
                        child: Text(S.text.settings_enable_safe_area),
                      ),
                      DropdownMenuItem(
                        value: SafeAreaEnum.disable.value,
                        child: Text(S.text.settings_unable_safe_area),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: DropdownButton<Locale>(
                    value: state.locale,
                    onChanged: context.read<SettingsBloc>().onChangeLocale,
                    items: [
                      DropdownMenuItem(
                        value: LocaleEnum.en.value,
                        child: Text(S.text.settings_locale_en),
                      ),
                      DropdownMenuItem(
                        value: LocaleEnum.vi.value,
                        child: Text(S.text.settings_locale_vi),
                      ),
                    ],
                  ),
                ),
                const XStateEmptyWidget(),
                const XStateErrorWidget()
              ],
            ),
          ),
        );
      },
    );
  }
}
