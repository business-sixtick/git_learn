import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'git_start_page.dart';
import 'git_branch_page.dart';

// 노티파이어, 프로바이더, 컨슈머

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // 기본 뼈대
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Git Learn'),
        // automaticallyImplyLeading: false, // Drawer 버튼 없애기
      ),
      body: const Text('body'),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              child: const Text(
                '목차',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10,),
              title: const Text('Git Start'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> TextFieldEx())); // 페이지가 바뀜. 싱글페이지 앱을 추구해야함
                showModalBottomSheet(
                    context: context, builder: (context){return const FractionallySizedBox(widthFactor: 1, heightFactor: 2, child: GitStartPage());});
              },
            ),
            ListTile(
              leading: const Icon(Icons.circle, size: 10,),
              title: const Text('Git Branch'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                showModalBottomSheet(
                    context: context, builder: (context){return const FractionallySizedBox(widthFactor: 1, heightFactor: 2, child: GitBranchPage());});
              },
            ),
          ],
        ),
      ),
    );
  }
}
