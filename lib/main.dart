import 'package:flutter/material.dart';
import 'package:practice/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:
          PageRouter.router.routeInformationParser, // Router정보 값 전달
      routeInformationProvider: PageRouter.router
          .routeInformationProvider, //  URI String을 상태 혹은 라우터에서 사용할수있게 변환
      routerDelegate:
          PageRouter.router.routerDelegate, // 변경된 값으로 어떤 라우터를 보내줄지 정함
    );
  }
}
