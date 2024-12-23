import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'widgets/main_page.dart';

import 'package:window_size/window_size.dart';
import 'dart:io';

void main() {
  if (kIsWeb) {
    // 웹에서만 동작하는 코드를 삽입하시오. 삽입?? ㅋㅋㅋ
  } else { // 웹 빌드시에 네이티브 코드들이 에러를 일으킴킴
    WidgetsFlutterBinding
        .ensureInitialized(); //Flutter 애플리케이션이 시작되기 전에 필요한 모든 시스템 및 바인딩을 초기화하는 역할을 합니다
    if (Platform.isLinux | Platform.isWindows) {
      // Platform.localeName == ko_KR, Platform.localHostname == sixtick_sub3
      setWindowTitle("${Platform.operatingSystem} application"); // windows
      setWindowMinSize(const Size(400, 800));
      setWindowMaxSize(const Size(1920, 1080));
      setWindowFrame(const Rect.fromLTWH(800, 100, 450, 900)); // 창 위치와 크기 설정
    }
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Learn',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: true,
      ), // 화면의 최상단 위젯
      home: MainPage(),
    );
  }
}
