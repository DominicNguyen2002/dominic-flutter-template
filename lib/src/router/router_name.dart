enum AppRouteNames {
  home(path: '/'),
  account(path: '/account'),
  signIn(path: '/sign-in'),
  signUp(path: '/sign-up'),
  forgotPassword(path: '/forgot-password'),
  product(path: '/product'),
  productDetails(
    path: 'product-details',
    paramName: 'id',
  ),
  profile(path: '/profile'),
  settings(path: '/settings');

  const AppRouteNames({
    required this.path,
    this.paramName,
  });

  final String path;
  final String? paramName;

  String get name => path;

  String get subPath {
    if (path == '/') {
      return path;
    }
    return path.replaceFirst('/', '');
  }

  String get buildPathParam => '$path:$paramName';
  String get buildSubPathParam => '$subPath:$paramName';
}
