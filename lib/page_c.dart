import 'package:flutter/material.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});


  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.orange,
      title: const Text('画面C'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
