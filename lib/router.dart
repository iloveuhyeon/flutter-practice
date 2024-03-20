import 'package:go_router/go_router.dart';
import 'package:practice/views/home/home_page.dart';
import 'package:practice/views/setting/setting_page.dart';
import 'package:practice/views/sign_up/sign_up_page.dart';
import 'package:practice/views/login/login_page.dart';

class PageRouter {
  static const String _homePage = '/';
  static const String _loginPage = "login";
  static const String _signUpPage = "signUp";
  static const String _settingPage = "setting";
  static final GoRouter router = GoRouter(
    initialLocation: "/login",
    routes: [
      GoRoute(
        path: _homePage,
        builder: (_, state) => const HomePage(),
        routes: [
          GoRoute(
            path: _signUpPage,
            builder: (_, state) => const SignUpPage(),
          ),
          GoRoute(
            path: _loginPage,
            builder: (_, state) => LoginPage(),
          ),
          GoRoute(
            path: _settingPage,
            builder: (context, state) => const SettingPage(),
          )
        ],
      ),
    ],
  );
}
