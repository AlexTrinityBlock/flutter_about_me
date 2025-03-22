import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // 新增此行

// 個人故事內容
class StoryWidgets extends StatelessWidget {
  // 建構子
  const StoryWidgets({super.key});
  // Root widget
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // 職位圖標 盾牌 Icon
                  Icon(FontAwesomeIcons.shield, color: Colors.white, size: 40),
                  // 職位標題
                  Text(
                    '現職',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // 職位內容
                  Text(
                    '目前任職某個資安有關國家單位的工作',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  //  最想參與的職務圖標 雲 Icon
                  Icon(FontAwesomeIcons.cloud, color: Colors.white, size: 40),
                  SizedBox(height: 16),
                  // 最想參與的職務標題
                  Text(
                    '下個最想參與的職務',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // 最想參與的職務內容
                  Text(
                    '大語言模型微調\n'
                    '後端開發\n'
                    'APP開發',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  // 曾經任職圖標 人 Icon
                  Icon(FontAwesomeIcons.user, color: Colors.white, size: 40),
                  // 曾經任職標題
                  Text(
                    '曾經任職',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // 曾經任職內容
                  Text(
                    "後端工程師\n"
                    "維運工程師\n"
                    "雲端工程師\n"
                    "Kubernetes 佈署",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  // 想考的證照 筆 Icon
                  Icon(FontAwesomeIcons.pen, color: Colors.white, size: 40),
                  // 想考的證照標題
                  Text(
                    '想考的證照',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // 想考的證照內容
                  Text(
                    "CKAD\n"
                    "CKS\n"
                    "CEH\n"
                    "ISO 27001\n"
                    "RHCSA\n"
                    "RHCE"
                    ,
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
