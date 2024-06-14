import 'package:flutter/material.dart';

class PageG extends StatelessWidget {
  const PageG({super.key});

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.pinkAccent,
      title: const Text('画面G'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.yellowAccent,
      ),
    );
  }
}
