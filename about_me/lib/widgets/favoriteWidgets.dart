import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// 喜好頁面
class FavoriteWidgets extends StatelessWidget {
  // 建構子
  const FavoriteWidgets({super.key});

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
                  SizedBox(height: 16),
                  // 熱情圖標 扳手
                  Icon(
                    FontAwesomeIcons.wrench,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 熱情標題
                  Text(
                    '熱情',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // 熱情內容
                  Text(
                      "程式語言: Python, Javascript\n"
                      "CI/CD: Jenkins, Ansible semaphore\n"
                      "資安技術: 網路安全, 漏洞掃描, 系統安全\n"
                      "網頁前端: Bootstrap, HTML, CSS, Javascript\n"
                      "網頁後端: Django, Flask, Express.js\n"
                      "資料庫: PostgreSQL, MySQL, MongoDB, Redis\n"
                      "雲端: AWS, GCP, Azure\n"
                      "容器化技術: Docker Swarm, Docker compose, Docker, Kubernetes"
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