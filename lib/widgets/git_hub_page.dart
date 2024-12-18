import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 노티파이어, 프로바이더, 컨슈머

class GitHubPage extends ConsumerWidget {
  const GitHubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Git hub'),
        ),
        body:  SingleChildScrollView(
          child:  Container(
            width: double.infinity, // 횡스크롤이 안되기에에 부모의 최대폭을 가져간다. 
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('''[깃 허브]
            
              1
              2
              3
              2
            
              234
              234
              23
              423
              42
              34
              23
              42
              34
              234
              23
              4
              234
              23
              42
              34
              23
              42
              34
              23
              42
              34
              234
              23
              42
              34
              23
              42
              34
              234
              2
              34
              23
              end
            '''),
            ),
          ),
        ));
  }
}
