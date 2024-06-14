import 'package:flutter/material.dart';

class PageF extends StatelessWidget {
  const PageF({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.white24,
      title: const Text('画面F'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
