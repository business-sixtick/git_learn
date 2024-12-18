import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 노티파이어, 프로바이더, 컨슈머

class GitBranchPage extends ConsumerWidget {
  const GitBranchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Git Branch'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('''[깃 브랜치]

  - main 브랜치에서 분기 또는 병합을 한다. (내가 생각하기에 프로젝트를 분리하는게 낫지 않을까 싶다. 협업이 아니라 다른 고객사의 버전이 생길경우)

  - 브랜치 명령어
    > git branch    # 브랜치의 목록과 현재 브랜치(*로 표시되어있다)를 보여준다
    > git branch "이름"   # 이름에 해당하는 새로운 브랜치를 생성한다. 
'''),
        ));
  }
}
