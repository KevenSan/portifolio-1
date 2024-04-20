import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsPage extends StatelessWidget {
  //final Color color;
  const SkillsPage({super.key});

  void _launch(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      print('Não foi possivel abrir o link : $url');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF13131F),
      child: Padding(
        padding: EdgeInsets.all(150),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Flutter',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/flutter_logo.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
           const SizedBox(width: 60),
                       InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Html',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/html.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 60),
                       InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'JavaScript',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/javascript.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 60),
                       InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Css',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/css.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 60),
                       InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sql',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/flutter_logo.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 60),
                       InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
              },            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Delphi',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/flutter_logo.png',
                      width: 130,
                      height: 130,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
