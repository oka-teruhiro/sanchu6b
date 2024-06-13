import 'dart:math';
import 'package:flutter/material.dart';
//import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'page_b_model.dart';

class PageB extends StatelessWidget {
  final int counter; // カウンター値を受け取るプロパティを追加

  PageB({ // コンストラクタから `const` 修飾子を削除
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

