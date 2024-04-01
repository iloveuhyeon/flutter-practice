import 'package:practice/views/chatbot/chatbot.dart';
import 'package:practice/views/health/health_page.dart';
import 'package:practice/views/heart/heart_page.dart';
import 'package:practice/views/home_page/home_page.dart';
import 'package:practice/views/my_page/my_page.dart';

int pageindex = 0;
const String nav = "assets/images/bottom_nav/";
const String focusNav = "assets/images/bottom_nav_property/";
const page = [
  // 순서 중요시 해야함
  HomePage(),
  HealthPage(),
  ChatBotPage(),
  HeartPage(),
  MyPage(),
];
