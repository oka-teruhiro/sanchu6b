import 'package:flutter/material.dart';

class PageD extends StatelessWidget {
  const PageD({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.orangeAccent,
      title: const Text('画面D'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
