import 'package:flutter/material.dart';
import 'screens/appBar_bottomNavBar.dart';

// 主函數
void main() {
  // 執行應用程式
  runApp(const AboutMeApp());
}

// AboutMe 類別
class AboutMeApp extends StatelessWidget {
  // 建構子
  const AboutMeApp({super.key});
  // Root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me: Alex Raven',
      theme: ThemeData(
        // 主題色彩
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        // 深色Body背景
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      // 導入首頁
      home: const HomePage(title: '關於我 Alex Raven'),
    );
  }
}