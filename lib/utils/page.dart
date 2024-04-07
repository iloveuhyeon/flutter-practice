import 'package:practice/views/chatbot/chatbot.dart';
import 'package:practice/views/health/health_page.dart';
import 'package:practice/views/heart/heart_page.dart';
import 'package:practice/views/home_page/home_page.dart';
import 'package:practice/views/my_page/my_page.dart';

int pageindex = 0; // page 번호
const page = [
  // page들
  // 순서 중요시 해야함
  HomePage(),
  HealthPage(),
  ChatBotPage(),
  HeartPage(),
  MyPage(),
];
const labelText = [
  // label에 들어있는 함수들
  '식자재',
  '그린푸드',
];
