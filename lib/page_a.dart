import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';
import 'page_b.dart'; // `PageB` のインポートを追加

class PageA extends StatefulWidget {
  final int counter;                 // 6.1.0 カウンター値を受け取る
  final Function(int) updateCounter; // 6.1.1 カウンター値を更新する関数を受け取る

  const PageA({
    super.key,
    required this.counter,
    required this.updateCounter,    // 6.1.1 カウンター値を更新する関数を受け取る
  });

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  //int _counter = 0;
  late int _counter;           // 6.1.1

  @override                    // 6.1.1
  void initState() {           // 6.1.1
    super.initState();         // 6.1.1
    _counter = widget.counter; // 6.1.1
  }                            // 6.1.1

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    widget.updateCounter(_counter);  // 6.1.1 カウンター値を更新
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white24,
          title: const Text('天運三柱推命 ver.6.1.0',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
              ),
          ),
        ),
        body: Center(
          child: Container(
            height: 120,
            color: Colors.white24 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '右下のボタンをタップして下さい',
                ),
                Text(
                  '$_counter',
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(currentIndex: 1, counter: _counter), // カウンター値を渡して `MyHomePage` へ
                      ),
                    );
                  },
                  child: const Text('結果'),),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
