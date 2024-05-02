import 'package:bot_toast/bot_toast.dart';
import 'package:dominic_flutter_template/src/features/settings/logic/settings_bloc.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/router/router.dart';
import 'package:dominic_flutter_template/src/themes/screen.dart';
import 'package:dominic_flutter_template/src/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<AppRouter>();
    AppScreens.mediaQuery = MediaQuery.of(context);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SettingsBloc(),
        ),
      ],
      child: BlocBuilder<SettingsBloc, SettingsState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            locale: state.locale,
            localizationsDelegates: S.localizationsDelegates,
            supportedLocales: S.supportedLocales,
            onGenerateTitle: (BuildContext context) =>
                S.of(context).common_appTitle,
            builder: BotToastInit(),
            theme: AppThemes.light(),
            darkTheme: AppThemes.dark(),
            themeMode: state.themeMode,
            routerConfig: appRouter.router,
          );
        },
      ),
    );
  }
}
