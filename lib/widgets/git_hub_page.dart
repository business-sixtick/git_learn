import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// 노티파이어, 프로바이더, 컨슈머

class GitHubPage extends ConsumerWidget {
  const GitHubPage({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
    }
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Git hub'),
        ),
        body: ListView(
          children: [
            const ListTile(
              leading: Icon(Icons.horizontal_rule_rounded),
              title: Text('github', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('원격 저장소 remote repository 로 활용 할 수 있다. '
              '\r\n원격 저장소는 백업 기능과 협업 기능을 제공 할 수 있다. '
              ),
            ),
            ListTile(
              leading: const Icon(Icons.link),
              title: const Text('깃 허브 주소 www.github.com'),  
              onTap: () => _launchUrl('https://www.github.com'),
            ),
            const ListTile(
              leading: Icon(Icons.horizontal_rule_rounded),
              title: Text('지역 저장소와 원격 저장소', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('[지역저장소] push >> [원격저장소]'
              '\r\n[지역저장소] << pull [원격저장소]'
              ),
            ),
            const ListTile(
              leading: Icon(Icons.horizontal_rule_rounded),
              title: Text('명령어', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('> git remote add origin https://github.com/business-sixtick/git_learn.git   # 원격지 주소를 등록한다 origin은 원격지 이름이다 '
              '\r\n> git push -u origin main      # 원격지 main 브랜치에 밀어넣는다 -u 옵션은 처음 한번만 쓴다. 이후에는 git push 로 써도 된다 '
              '\r\n> git remote -v      # 원격지 등록 정보를 보여준다'
              '\r\n> git pull origin main      # 원격지에서 main 브랜치로 땡겨온다. 브랜치가 main으로 되어있다면 그냥 git pull만 써도된다.'
              '\r\n> git clone "원격저장소https주소"      # 원격지의 프로젝트를 받아온다. 기본적으로 현재 폴더에 프로젝트명으로 폴더가 생긴다.'
              '\r\n> git fetch      # 원격지의 변경내용를 보여준다. 대게 push 하기전에 쓴다.'
              ),
            ),
            const ListTile(
              leading: Icon(Icons.horizontal_rule_rounded),
              title: Text('SSH로 접속하기', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('> ssh-keygen      # 시크릿 키 생성성'
              '\r\n깃허브에 SSH 키 등록을 해야한다.'
              '\r\n> git remote add origin "깃허브에서복사한SSH주소"    # https 가 아니라 ssh로 접속한다. 키가 등록되어있어야 한다'
              '\r\n내가 생각하기에 윈도우환경은 https 리눅스 환경은 ssh를 쓰는게 편한다다'
              ),
            ),
          ],
        ));
  }
}
