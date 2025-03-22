import 'package:flutter/material.dart';
// 家目錄內容
class HomeWidgets extends StatelessWidget {
  // 建構子
  const HomeWidgets({super.key});
  // Root widget
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            // 頭像上方的空白與圓形邊框
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              // 圓形邊框容器
              child: Container(
                width: 200,
                height: 200,
                // 圓形邊框
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/alex_raven.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 自我介紹文字
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // 名字
                  Text(
                    'Alex Raven',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  // 自我介紹
                  Text(
                    '我很喜歡開發，在我的旅途中幫很多夥伴解決了各式的問題，但是始終沒有機會將職位掛上開發，很遺憾。',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}