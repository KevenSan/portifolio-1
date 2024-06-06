import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  void _openOutlookInbox() async {
    const String outlookInboxUrl = 'https://outlook.live.com/owa/';
    if (await canLaunch(outlookInboxUrl)) {
      await launch(outlookInboxUrl);
    } else {
      print('Não foi possível abrir o Outlook');
    }
  }

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
          return _buildWideLayout(); // TELA GRANDE
        } else {
          return _buildTallLayout(); // TELA PEQUENA
        }
      },
    );
  }

  Widget _buildWideLayout() {
    return Container(
      color: const Color(0xFF13131F),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            _buildContactItem(
              'Email',
              'kevensan013@outlook.com',
              'assets/imagens/email.png',
              () {
                _openOutlookInbox();
              },
            ),
            _buildContactItem(
              'LinkedIn',
              '@KevenSan',
              'assets/imagens/linkedin.png',
              () {
                _launch('https://www.linkedin.com/in/keven-santos-091234287/');
              },
            ),
            _buildContactItem(
              'WhatsApp',
              '(27) 99800-7596',
              'assets/imagens/whatsapp.png',
              () {
                _launch('https://api.whatsapp.com/send?phone=5527998007596');
              },
            ),
            _buildContactItem(
              'GitHub',
              '@kevinSan',
              'assets/imagens/github.png',
              () {
                _launch('https://github.com/KevenSan');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTallLayout() {
    return Container(
      color: const Color(0xFF13131F),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: [
            _buildContactItem(
              'Email',
              'kevensan013@outlook.com',
              'assets/imagens/email.png',
              () {
                _openOutlookInbox();
              },
            ),
            _buildContactItem(
              'LinkedIn',
              '@KevenSan',
              'assets/imagens/linkedin.png',
              () {
                _launch('https://www.linkedin.com/in/keven-santos-091234287/');
              },
            ),
            _buildContactItem(
              'WhatsApp',
              '(27) 99800-7596',
              'assets/imagens/whatsapp.png',
              () {
                _launch('https://api.whatsapp.com/send?phone=5527998007596');
              },
            ),
            _buildContactItem(
              'GitHub',
              '@kevinSan',
              'assets/imagens/github.png',
              () {
                _launch('https://github.com/KevenSan');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(
      String label, String detail, String imagePath, VoidCallback onTap) {
    return Center(
      child: InkWell(
        mouseCursor: MaterialStateMouseCursor.clickable,
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              child: Image.asset(
                imagePath,
                width: 50,
                height: 50,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 3),
            Text(
              detail,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
