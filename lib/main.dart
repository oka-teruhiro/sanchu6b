import 'package:flutter/material.dart';
import 'page_a.dart';
import 'page_b.dart';
import 'page_c.dart';
import 'page_d.dart';
import 'page_e.dart';
import 'page_f.dart';
import 'page_g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '天運三柱推命',
      theme: ThemeData.dark(
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final int currentIndex;
  final int? counter;  // カウンター値を受け取るプロパティを追加

  const MyHomePage({
    super.key,
    this.currentIndex = 0,
    this.counter, //カウンター値の初期化
  }); // currentIndexを追加


  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  late int _currentIndex;
  late int _counter;                // 6.1.0 カウンター値を保持する

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
    _counter = widget.counter ?? 0; // 6.1.0 カウンター値を初期化
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _updateCounter(int value) { // 6.1.1 カウンター値を更新するメソッド
    setState(() {                  // 6.1.1 カウンター値を更新するメソッド
      _counter = value;            // 6.1.1 カウンター値を更新するメソッド
    });                            // 6.1.1 カウンター値を更新するメソッド
  }                                // 6.1.1 カウンター値を更新するメソッド

  @override
  Widget build(BuildContext context) {
    // 6.1.0 `_children` を更新して `PageB` にカウンターを渡す
    final List<Widget> children = [
      PageA(counter: _counter, updateCounter: _updateCounter), // 6.1.1 'PageA' にカウンターの値と更新関数を渡す
      PageB(counter: _counter), // カウンター値を `PageB` に渡す
      const PageC(),
      const PageD(),
      const PageE(),
      const PageF(),
      const PageG(),
    ];
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: _currentIndex == 0
          ? null
          : BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white24,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.pinkAccent,
              onTap: onTabTapped,
              currentIndex: _currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.cake),
                  label: '誕生日',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.trending_up),
                  label: '運勢',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: '性格',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.upload),
                  label: '天運年',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.table_chart),
                  label: '命式表',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.pie_chart),
                  label: 'ﾁｬｰﾄ',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervisor_account),
                  label: '相性',
                ),
              ],
            ),
    );
  }
}
