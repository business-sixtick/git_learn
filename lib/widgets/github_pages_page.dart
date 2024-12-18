import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

// 노티파이어, 프로바이더, 컨슈머

class GitHubPagesPage extends ConsumerWidget {
  const GitHubPagesPage({super.key});

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
          title: const Text('Github Pages'),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.horizontal_rule_rounded),
              title: Text('pages 설정하기', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('상단 메뉴바에서 Settings 클릭'
              '\r\n이 후 좌측 Pages 클릭'
              '\r\nBranch 항목에서 브렌치를 고르고 index.html의 위치를 고른다. / 루트와 /docs 폴더를 고를 수 있다. '
              '\r\n이 후 save 버튼을 눌러 저장한다.'
              '\r\nurl 형식은 https://아이디.github.io/저장소명'
              '\r\nhttps://business-sixtick.github.io/git_learn'
              '\r\n참고로 플러터에서 빌드할때 flutter build web --base-href="/git_learn/" -o docs'
              ),
            ),
            
          ],
        ));
  }
}
