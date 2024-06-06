import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  void _launch(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Não foi possível abrir o link: $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideLayout(); //TELA GRANDE
        } else {
          return _buildTallLayout(); //TELA PEQUENA
        }
      },
    );
  }

  Widget _buildWideLayout() {
    return Expanded(
      child: Container(
        color: const Color(0xFF13131F),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            //scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildSkillItem('Flutter', 'assets/imagens/flutter_logo.png'),
              _buildSkillItem('Dart', 'assets/imagens/logo_dart.png'),
              _buildSkillItem('HTML', 'assets/imagens/html.png'),
              _buildSkillItem('JavaScript', 'assets/imagens/javascript.png'),
              _buildSkillItem('CSS', 'assets/imagens/css.png'),
              _buildSkillItem('SQL', 'assets/imagens/sql_logo.png'),
              _buildSkillItem('Delphi', 'assets/imagens/logo_delphi.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTallLayout() {
    return Expanded(
      child: Container(
        color: const Color(0xFF13131F),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildSkillItem('Flutter', 'assets/imagens/flutter_logo.png'),
              _buildSkillItem('Dart', 'assets/imagens/logo_dart.png'),
              _buildSkillItem('HTML', 'assets/imagens/html.png'),
              _buildSkillItem('JavaScript', 'assets/imagens/javascript.png'),
              _buildSkillItem('CSS', 'assets/imagens/css.png'),
              _buildSkillItem('SQL', 'assets/imagens/sql_logo.png'),
              _buildSkillItem('Delphi', 'assets/imagens/logo_delphi.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillItem(String label, String imagePath) {
    return Container(
      width: double.infinity,
      height: 200,
      child: InkWell(
        mouseCursor: WidgetStateMouseCursor.clickable,
        onTap: () {
          // _launch('https://nomeDoSite.com.br');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Image.asset(
                imagePath,
                width: 105,
                height: 105,
              ),
            ),
            //const SizedBox(height: 5),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
