import 'package:flutter/material.dart';
//import 'package:portifolio/classes/sections_classe.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Contact_page extends StatefulWidget {
  const Contact_page({super.key});

  @override
  State<Contact_page> createState() => _contact_pageState();
}

// ignore: camel_case_types
class _contact_pageState extends State<Contact_page> {
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _openOutlookInbox();

                        //launchUrl(Uri.parse('https://outlook.live.com/owa/'));
                      },
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/imagens/email.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('Email',
                    style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 3),
                    const Text('kevensan013@outlook.com',
                    style: TextStyle(color: Colors.white10),
                    ),
                  ],
                ),

                const SizedBox(width: 50),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      //Imagem do LinkeDin
                      onTap: () {
                        //OnTap == AoClicar
                        launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/keven-santos-091234287/'));
                      },
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/imagens/linkedin.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text('Linkedin',
                    style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 3),
                    const Text('@KevenSan',
                    style: TextStyle(color: Colors.white10),
                    ),
                  ],
                ),

                const SizedBox(width: 50),
                //Sizebox para dar espaço

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(
                            'https://api.whatsapp.com/send?phone=5527998007596'));
                      },
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/imagens/whatsapp.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('whatsapp',
                    style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 3),
                    const Text('27 99800-7596',
                    style: TextStyle(color: Colors.white10),
                    ),
                  ],
                ),

                const SizedBox(width: 50),
                //Sizebox para dar espaço

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse('https://github.com/KevenSan'));
                      },
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/imagens/github.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text('GitHub',
                    style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 3),
                    const Text('KevinSan',
                    style: TextStyle(color: Colors.white10),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


// CODIGO DO CHATGPT COM O MOUSE VIRANDO DEDO


// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class ContactPage extends StatefulWidget {
//   ContactPage({Key? key});

//   @override
//   State<ContactPage> createState() => _ContactPageState();
// }

// class _ContactPageState extends State<ContactPage> {
//   void _openOutlookInbox() async {
//     const String outlookInboxUrl = 'https://outlook.live.com/owa/';
//     if (await canLaunch(outlookInboxUrl)) {
//       await launch(outlookInboxUrl);
//     } else {
//       print('Não foi possível abrir o outlook');
//     }
//   }

//   void _launch(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       print('Não foi possível abrir o link: $url');
//     }
//   }

//   Widget _buildContactColumn(String imageUrl, String label, String details, Function() onTap) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           GestureDetector(
//             onTap: onTap,
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(Radius.circular(50)),
//               child: Image.asset(
//                 imageUrl,
//                 width: 50,
//                 height: 50,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Text(
//             label,
//             style: TextStyle(color: Colors.white),
//           ),
//           const SizedBox(height: 3),
//           Text(
//             details,
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xFF13131F),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _buildContactColumn(
//               'assets/imagens/email.jpg',
//               'Email',
//               'kevensan013@outlook.com',
//               _openOutlookInbox,
//             ),

//             const SizedBox(width: 50),

//             _buildContactColumn(
//               'assets/imagens/linkedin.jpg',
//               'LinkedIn',
//               '@KevenSan',
//               () {
//                 _launch('https://www.linkedin.com/in/keven-santos-091234287/');
//               },
//             ),

//             const SizedBox(width: 50),

//             _buildContactColumn(
//               'assets/imagens/whatsapp.jpg',
//               'WhatsApp',
//               '27 99800-7596',
//               () {
//                 _launch('https://api.whatsapp.com/send?phone=5527998007596');
//               },
//             ),

//             const SizedBox(width: 50),

//             _buildContactColumn(
//               'assets/imagens/github.jpg',
//               'GitHub',
//               'KevinSan',
//               () {
//                 _launch('https://github.com/KevenSan');
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
