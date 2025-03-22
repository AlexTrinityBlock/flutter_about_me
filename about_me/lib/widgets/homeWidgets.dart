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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // 畫框：外層 Container 畫出邊框效果
                  Container(
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey, // 畫框的顏色
                        width: 20.0,          // 畫框的寬度
                      ),
                    ),
                  ),
                  // 頭像圖片：ClipOval 裁切成圓形
                  ClipOval(
                    child: Image.asset(
                      'assets/images/alex_raven.jpg',
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
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
                    '我很喜歡開發，在我的旅途中幫很多夥伴解決了各式的問題，但是始終沒有機會將職位寫上開發，很遺憾。',
                    style: TextStyle(
                      fontSize: 20,
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