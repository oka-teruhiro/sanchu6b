import 'package:flutter/material.dart';

class PageE extends StatelessWidget {
  const PageE({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.purple,
      title: const Text('画面E'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
