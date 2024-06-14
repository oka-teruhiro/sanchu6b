import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  final int counter; // カウンター値を受け取るプロパティを追加

  const PageB({ // コンストラクタから `const` 修飾子を削除
    super.key,
    required this.counter, // 必須のプロパティとして追加
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'PageB',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'カウンターの値: $counter', // カウンターの値を表示
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ],
      ),
    );
  }
}

