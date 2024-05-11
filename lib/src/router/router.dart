import 'package:dominic_flutter_template/src/features/account/view/account_view.dart';
import 'package:dominic_flutter_template/src/features/authentication/view/forgot_view.dart';
import 'package:dominic_flutter_template/src/features/authentication/view/sign_in_view.dart';
import 'package:dominic_flutter_template/src/features/authentication/view/sign_up_view.dart';
import 'package:dominic_flutter_template/src/features/common/view/page_not_found_view.dart';
import 'package:dominic_flutter_template/src/features/dash_board/view/dash_board_view.dart';
import 'package:dominic_flutter_template/src/features/home/view/home_view.dart';
import 'package:dominic_flutter_template/src/features/product/view/product_view.dart';
import 'package:dominic_flutter_template/src/features/product_detail/view/product_details_view.dart';
import 'package:dominic_flutter_template/src/features/profile/view/profile_view.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/helpers/logger.dart';
import 'package:dominic_flutter_template/src/router/coordinator.dart';
import 'package:dominic_flutter_template/src/router/router_name.dart';
import 'package:dominic_flutter_template/src/features/settings/view/settings_view.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    navigatorKey: AppCoordinator.navigatorKey,
    initialLocation: AppRouteNames.settings.path,
    debugLogDiagnostics: kDebugMode,
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: AppCoordinator.navigatorKey,
        path: AppRouteNames.signIn.path,
        name: AppRouteNames.signIn.name,
        builder: (_, __) => const SignInView(),
      ),
      GoRoute(
        parentNavigatorKey: AppCoordinator.navigatorKey,
        path: AppRouteNames.signUp.path,
        name: AppRouteNames.signUp.name,
        builder: (_, __) => const SignUpView(),
      ),
      GoRoute(
        parentNavigatorKey: AppCoordinator.navigatorKey,
        path: AppRouteNames.forgotPassword.path,
        name: AppRouteNames.forgotPassword.name,
        builder: (_, __) => const ForgotView(),
      ),
      GoRoute(
        parentNavigatorKey: AppCoordinator.navigatorKey,
        path: AppRouteNames.settings.path,
        name: AppRouteNames.settings.name,
        builder: (_, __) {
          XLogger.buildingPage(namePage: S.text.settings);
          return const SettingsView();
        },
      ),
      ShellRoute(
        navigatorKey: AppCoordinator.shellKey,
        builder: (context, state, child) => DashBoardView(
          body: child,
        ),
        routes: <RouteBase>[
          GoRoute(
            path: AppRouteNames.home.subPath,
            name: AppRouteNames.home.name,
            builder: (context, state) => const HomeView(),
            redirect: (context, state) async {
              return null;
            },
          ),
          GoRoute(
            path: AppRouteNames.product.path,
            name: AppRouteNames.product.name,
            builder: (_, __) => const ProductView(),
            routes: <RouteBase>[
              GoRoute(
                path: AppRouteNames.productDetails.subPath,
                name: AppRouteNames.productDetails.name,
                builder: (context, state) {
                  final id = state
                      .pathParameters[AppRouteNames.productDetails.paramName]!;
                  return ProductDetailsView(
                    id: id,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: AppRouteNames.account.path,
            name: AppRouteNames.account.name,
            builder: (_, __) => const AccountView(),
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: AppCoordinator.navigatorKey,
        path: AppRouteNames.profile.path,
        name: AppRouteNames.profile.name,
        builder: (context, state) {
          return const ProfileView();
        },
      ),
    ],
    errorBuilder: (_, __) => const PageNotFoundView(),
  );
}
