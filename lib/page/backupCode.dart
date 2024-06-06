// import 'package:flutter/material.dart';
// import 'package:portifolio/page/about_page.dart';
// import 'package:portifolio/page/contact_page.dart';
// import 'package:portifolio/page/skills_page.dart';
// import '../classes/menu_classe.dart';
// import 'package:portifolio/classes/sections_classe.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _pageController = PageController();

//   void sectionClick(int section) {
//     _pageController.animateToPage(
//       section,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Portifólio',
//           style: TextStyle(color: Colors.white),
//         ),
//         //CHAMA As SECOES DO MENU_CLASSE
//         actions: [
//           Menu((section) {
//             _pageController.animateToPage(section,
//                 duration: const Duration(microseconds: 500),
//                 curve: Curves.ease);
//           }),
//         ],
//         backgroundColor: const Color(0xFF13131F),
//       ),
//       //CODIGO INSERE UM MENU LATERAL :
//       // drawer: Drawer(
//       //   child: ListView(
//       //     padding: EdgeInsets.zero,
//       //     children: <Widget>[
//       //       const DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Colors.blue,
//       //         ),
//       //         child: Text(
//       //           'Menu Lateral',
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontSize: 24,
//       //           ),
//       //         ),
//       //       ),
//       //       ListTile(
//       //         title: const Text('Home'),
//       //         onTap: () {
//       //           SectionClick(0);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Habilidades'),
//       //         onTap: () {
//       //           SectionClick(1);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //         ListTile(
//       //         title: const Text('Projetos'),
//       //         onTap: () {
//       //           SectionClick(2);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Contato'),
//       //         onTap: () {
//       //           SectionClick(3);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: Column(
//         children: [
//           // Menu((section) {
//           //   _pageController.animateToPage(section,
//           //       duration: const Duration(microseconds: 500),
//           //       curve: Curves.ease);
//           // }),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               scrollDirection: Axis.vertical,
//               pageSnapping: false,
//               children: [
//                 Container(
//                   color: const Color(0xFF13131F),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       //crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             ClipRRect(
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(200)),
//                               child: Image.asset(
//                                 'assets/imagens/img1dev.jpg',
//                                 //Imagem do Programador
//                                 width: MediaQuery.sizeOf(context).width *
//                                     0.5, //300,
//                                 height: MediaQuery.sizeOf(context).height *
//                                     0.7, //300,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             const SizedBox(width: 30),
//                             const Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Olá, eu sou',
//                                   //Nome do Programador
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 Text(
//                                   'Ronald Keven',
//                                   //Nome do Programador
//                                   style: TextStyle(
//                                     fontSize: 30,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     //TextButton (
//                     //style: AnimatedIcons.play_pause,)
//                   ),
//                 ),
//                 const AboutPage(
//                     //color: Color(0xFF13131F), Codigo original
//                     ),
//                 const SkillsPage(
//                     //color: Color(0xFF13131F), Codigo original
//                     //color: Color(0xFF13131F),
//                     ),
//                 Section(
//                   //color: Color(0xFF13131F), Codigo original
//                   color: Colors.deepOrange,
//                 ),
//                 const ContactPage(
//                     //Chama a pagina Contato
//                     ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


//BACKUP ANTES DE COLOCAR A IMAGEM PARA ALTENAR PARA CIMA OU PARA O LADO DE ACORDO COM O TAMANHO DA TELA.
//opklk
// import 'package:flutter/material.dart';
// import 'package:portifolio/page/about_page.dart';
// import 'package:portifolio/page/contact_page.dart';
// import 'package:portifolio/page/skills_page.dart';
// import '../classes/menu_classe.dart';
// import 'package:portifolio/classes/sections_classe.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final _pageController = PageController();

//   void sectionClick(int section) {
//     _pageController.animateToPage(
//       section,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.ease,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Portifólio',
//           style: TextStyle(color: Colors.white),
//         ),
//         //CHAMA As SECOES DO MENU_CLASSE
//         actions: [
//           Menu((section) {
//             _pageController.animateToPage(section,
//                 duration: const Duration(microseconds: 500),
//                 curve: Curves.ease);
//           }),
//         ],
//         backgroundColor: const Color(0xFF13131F),
//       ),
//       //CODIGO INSERE UM MENU LATERAL :
//       // drawer: Drawer(
//       //   child: ListView(
//       //     padding: EdgeInsets.zero,
//       //     children: <Widget>[
//       //       const DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Colors.blue,
//       //         ),
//       //         child: Text(
//       //           'Menu Lateral',
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontSize: 24,
//       //           ),
//       //         ),
//       //       ),
//       //       ListTile(
//       //         title: const Text('Home'),
//       //         onTap: () {
//       //           SectionClick(0);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Habilidades'),
//       //         onTap: () {
//       //           SectionClick(1);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //         ListTile(
//       //         title: const Text('Projetos'),
//       //         onTap: () {
//       //           SectionClick(2);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //       ListTile(
//       //         title: const Text('Contato'),
//       //         onTap: () {
//       //           SectionClick(3);
//       //           Navigator.pop(context);
//       //         },
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: Column(
//         children: [
//           // Menu((section) {
//           //   _pageController.animateToPage(section,
//           //       duration: const Duration(microseconds: 500),
//           //       curve: Curves.ease);
//           // }),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               scrollDirection: Axis.vertical,
//               pageSnapping: false,
//               children: [
//                 Container(
//                   color: const Color(0xFF13131F),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       //crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             ClipRRect(
//                               borderRadius:
//                                   const BorderRadius.all(Radius.circular(200)),
//                               child: ConstrainedBox(
//                                 constraints: BoxConstraints(
//                                   minHeight: 100,
//                                   minWidth: 100,
//                                   maxWidth: 186,
//                                   maxHeight: 180,
//                                 ),
//                                 child: Image.asset(
//                                   'assets/imagens/img1dev.jpg',
//                                   //Imagem do Programador
//                                   // width: 300,
//                                   // height: 300,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 30),
//                             Container(
//                               height: MediaQuery.sizeOf(context).height * 0.2,
//                               width: MediaQuery.sizeOf(context).width * 0.3,
//                               child: const Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Olá, eu sou o',
//                                     //Nome do Programador
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Ronald Santos',
//                                     //Nome do Programador
//                                     style: TextStyle(
//                                       fontSize: 30,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.deepPurple,
//                                     ),
//                                   ),
//                                   Text(
//                                     'Desenvolvedor FullStack',
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.white),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     //TextButton (
//                     //style: AnimatedIcons.play_pause,)
//                   ),
//                 ),
//                 const AboutPage(
//                     //color: Color(0xFF13131F), Codigo original
//                     ),
//                 const SkillsPage(
//                     //color: Color(0xFF13131F), Codigo original
//                     //color: Color(0xFF13131F),
//                     ),
//                 Section(
//                   //color: Color(0xFF13131F), Codigo original
//                   color: Colors.deepOrange,
//                 ),
//                 const ContactPage(
//                     //Chama a pagina Contato
//                     ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



// BACKUP DO CODIGO DE SKILLSPAGE 
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:url_launcher/url_launcher.dart';

// class SkillsPage extends StatelessWidget {
//   //final Color color;
//   const SkillsPage({super.key});

//   void _launch(String url) async {
//     if (await canLaunchUrl(url as Uri)) {
//       await launchUrl(url as Uri);
//     } else {
//       print('Não foi possivel abrir o link : $url');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         color: const Color(0xFF13131F),
//         child: Padding(
//           padding: EdgeInsets.all(20),
//           child: GridView(
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                
//             children: [
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Flutter',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/flutter_logo.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Dart',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/logo_dart.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Html',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/html.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'JavaScript',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/javascript.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Css',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/css.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Sql',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/flutter_logo.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 width: MediaQuery.sizeOf(context).width * 0.10,
//                 height: MediaQuery.sizeOf(context).height * 0.25,
//                 child: InkWell(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   onTap: () {
//                     // launchUrl(Uri.parse('https://nomeDoSite.com.br'));
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Delphi',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       const SizedBox(height: 10),
//                       ClipRRect(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(50)),
//                         child: Image.asset(
//                           'assets/imagens/logo_delphi.png',
//                           width: 130,
//                           height: 130,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
