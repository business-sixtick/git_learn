import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_learn/widgets/github_pages_page.dart';

import 'git_start_page.dart';
import 'git_branch_page.dart';
import 'git_hub_page.dart';

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
      body: const Center(child: const Text('깃허브를 \r\n\r\n배워 봅시다', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
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
              leading: const Icon(
                Icons.circle,
                size: 10,
              ),
              title: const Text('Git Start'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> TextFieldEx())); // 페이지가 바뀜. 싱글페이지 앱을 추구해야함
                showModalBottomSheet(

                    isScrollControlled: true,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return const FractionallySizedBox(
                        
                          widthFactor: 1,
                          child: GitStartPage());
                    });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                size: 10,
              ),
              title: const Text('Git Branch'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                showModalBottomSheet(
                    isScrollControlled: true,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return const FractionallySizedBox(
                          widthFactor: 1,
                          child: GitBranchPage());
                    });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                size: 10,
              ),
              title: const Text('Git Hub'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                showModalBottomSheet(
                    isScrollControlled: true,
                    // enableDrag: false,
                    context: context,
                    builder: (context) {
                      return const FractionallySizedBox(
                          widthFactor: 1, child: GitHubPage());
                    });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.circle,
                size: 10,
              ),
              title: const Text('Github Pages'),
              onTap: () {
                Navigator.pop(context); // Drawer 닫기
                showModalBottomSheet(
                    isScrollControlled: true,
                    // enableDrag: false,
                    context: context,
                    builder: (context) {
                      return const FractionallySizedBox(
                          widthFactor: 1, child: GitHubPagesPage());
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
