import 'package:flutter/material.dart';
import '../widgets/homeWidgets.dart';
import '../widgets/storyWidgets.dart';
import '../widgets/favoriteWidgets.dart';

// 主函數
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // 點擊函數
  // 這將會輸入導航欄位被點擊的某個按鈕
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // 引導頁面列表
  static final List<Widget> _pages = <Widget>[
    // 首頁內容
    HomeWidgets(),
    // 故事頁面內容
    StoryWidgets(),
    // 最愛頁面內容
    FavoriteWidgets(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar 上排 App 名稱s
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: TextStyle(color: Theme.of(context).colorScheme.surfaceBright),
        ),
      ),
      body: IndexedStack(index: _selectedIndex, children: _pages),
      // 底部導覽列
      bottomNavigationBar: BottomNavigationBar(
        // 顏色
        backgroundColor: Colors.black, // 底部導航列的背景色
        selectedItemColor: Colors.white, // 選取時的圖示與文字顏色
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex, // 設定當前選取的索引
        onTap: _onItemTapped, // 點擊事件
        // 選單按鈕
        items: const [
          // 首頁
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // 故事
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Story'),
          // 最愛
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
