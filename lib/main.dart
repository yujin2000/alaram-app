import 'package:alarm_app_sample/alarm_controller.dart';
import 'package:alarm_app_sample/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // AlarmController 의존성 주입, permanent => 앱 시작부터 상태 관리를 함
    Get.put(AlarmController(), permanent: true);

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
