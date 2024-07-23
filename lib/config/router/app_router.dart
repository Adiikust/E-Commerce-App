import '../../core/constants/export.dart';

final GoRouter router = GoRouter(
  // redirect: (context, state) {
  //   if (FirebaseAuth.instance.currentUser?.uid != null) {
  //     context.pushNamed(RouteNames.homeView);
  //   } else {
  //     context.pushNamed(RouteNames.onBoardingView);
  //   }
  //   return null;
  // },
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: RouteNames.splashView,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RouteNames.loginView,
          name: RouteNames.loginView,
          builder: (BuildContext context, GoRouterState state) {
            return const LoginView();
          },
        ),
        GoRoute(
          path: RouteNames.registrationView,
          name: RouteNames.registrationView,
          builder: (BuildContext context, GoRouterState state) {
            return const RegistrationView();
          },
        ),
        GoRoute(
          path: RouteNames.homeView,
          name: RouteNames.homeView,
          builder: (BuildContext context, GoRouterState state) {
            return const HomeView();
          },
        ),
      ],
    ),
  ],
);
