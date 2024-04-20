import 'package:flutter/material.dart';
//import 'package:portifolio/classes/sections_classe.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

// ignore: camel_case_types
class _ContactPageState extends State<ContactPage> {
  void _openOutlookInbox() async {
    const String outlookInboxUrl = 'https://outlook.live.com/owa/';
    if (await canLaunch(outlookInboxUrl as String)) {
      await launch(outlookInboxUrl as String);
    } else {
      print('Nao foi possivel abrir o outlook');
    }
  }

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
        padding: const EdgeInsets.symmetric(horizontal: 250),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                //launchUrl(Uri.parse('https://outlook.live.com/owa/'));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/email.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Email',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'kevensan013@outlook.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 55),

            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                launchUrl(Uri.parse(
                    'https://www.linkedin.com/in/keven-santos-091234287/'));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/linkedin.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Linkedin',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    '@KevenSan',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 60),

            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                launchUrl(Uri.parse(
                    'https://api.whatsapp.com/send?phone=5527998007596'));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/whatsapp.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Whatsapp',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    '(27) 99800-7596',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 60),
            //Sizebox para dar espaço

            InkWell(
              mouseCursor: MaterialStateMouseCursor.clickable,
              onTap: () {
                launchUrl(Uri.parse('https://github.com/KevenSan'));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Image.asset(
                      'assets/imagens/github.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'GitHub',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    '@kevinSan',
                    style: TextStyle(color: Colors.white),
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
