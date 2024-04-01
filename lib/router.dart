import 'package:go_router/go_router.dart';
import 'package:practice/views/health/health_page.dart';
import 'package:practice/views/heart/heart_page.dart';
import 'package:practice/views/main_page/main_page.dart';
import 'package:practice/views/my_page/my_page.dart';
import 'package:practice/views/splash/splash_page.dart';

class PageRouter {
  static const String _home = "/";
  static const String _splash = "splash";
  static const String _myPage = "myPage";
  static const String _heart = "heart";
  static const String _health = "health";

  static final GoRouter router = GoRouter(
    initialLocation: _home,
    routes: [
      GoRoute(
        path: _home,
        builder: (context, state) => const MainPage(),
        routes: [
          GoRoute(
            path: _splash,
            builder: (context, state) => const SplashPage(),
          ),
          GoRoute(
            path: _myPage,
            builder: (context, state) => const MyPage(),
          ),
          GoRoute(
            path: _heart,
            builder: (context, state) => const HeartPage(),
          ),
          GoRoute(
            path: _health,
            builder: (context, state) => const HealthPage(),
          )
        ],
      ),
    ],
  );
}
