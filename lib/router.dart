import 'package:go_router/go_router.dart';
import 'package:practice/views/home/home_page.dart';
import 'package:practice/views/setting/setting_page.dart';
import 'package:practice/views/sign_up/sign_up_page.dart';
import 'package:practice/views/login/login_page.dart';

class PageRouter {
  static const String _homePage = 'home';
  static const String _loginPage = "/";
  static const String _signUpPage = "signUp";
  static const String _settingPage = "setting";
  static final GoRouter router = GoRouter(
    initialLocation: _loginPage,
    routes: [
      GoRoute(
        path: _loginPage,
        builder: (_, state) => LoginPage(),
        routes: [
          GoRoute(
            path: _signUpPage,
            builder: (_, state) => const SignUpPage(),
          ),
          GoRoute(
            path: _homePage,
            builder: (_, state) => const HomePage(),
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
