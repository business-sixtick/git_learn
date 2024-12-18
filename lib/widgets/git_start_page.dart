import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 노티파이어, 프로바이더, 컨슈머

class GitStartPage extends ConsumerWidget {
  const GitStartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Git Start'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('''[깃 시작하기]

  - 깃의 역할 : 버전관리, 백업, 협업

  - .gitignore : 버전관리 제외 대상을 기록하는 파일일

  - 환경설정 및 깃명령어
    > git config --global user.name "이름"    # 전역설정에 사용자 이름을 등록한다
    > git config --global user.email "메일 주소"    # 전역설정에 사용지 이메일을 등록한다. 
    > git init    #깃 레포지토리를 생성한다. 참고로 .git 파일이 생긴다.
    > git status    # 깃의 상태를 보여준다. 브렌치, 수정된 파일 등등..
    > git add "파일"    # 깃을 스테이지에 올린다. 버전 관리 하겠다는 뜻이다. 
    > git restore --staged "파일"   # 스테이징 된 파일을 언스테이징 한다. 
    > git commit -m "메시지"    # 스테이징한 파일들에 버전을 부여한다. -am 옵션은 스테이징을 포함한다.
    > git push    # 커밋한 버전을 원격저장소에 밀어 넣는다. 
    > git log     # 커밋 기록을 보여준다
    > git diff    # 변경사항 확인하기. 좀 어렵다. vscode 에서 확인하는게 좋겠다다
'''),
        ));
  }
}
