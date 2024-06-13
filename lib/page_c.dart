import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  // 進むボタンを押したとき
  go(BuildContext context){
    // 画面Bに進む
    context.go('/a');
  }

  // 戻るボタンを押したとき
  pop(BuildContext context){
    // 画面Bに進む
    context.pop('/b');
  }

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.orange,
      title: const Text('画面C'),
    );

    // 進むボタン
    final goButton = ElevatedButton(
      onPressed: () {
        go(context);
      },
      child: const Text('進む'),
    );

    // 戻るボタン
    final popButton = ElevatedButton(
      onPressed: () {
        pop(context);
      },
      child: const Text('戻る'),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              goButton,
              popButton,
            ],
          ),
        ),
      ),
    );
  }
}
