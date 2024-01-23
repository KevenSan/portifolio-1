import 'package:flutter/material.dart';
import 'package:portifolio/page/contact_page.dart';
import '../classes/menu_classe.dart';
import 'package:portifolio/classes/sections_classe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();

  void sectionClick(int section) {
    _pageController.animateToPage(
       section,
       duration: const Duration(milliseconds: 500),
       curve: Curves.ease,
        );
      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Portifolio'),
        //CHAMA As SECOES DO MENU_CLASSE
        actions: [
          Menu((section) {
            _pageController.animateToPage(section,
                duration: const Duration(microseconds: 500),
                curve: Curves.ease);
          }),
        ],
        backgroundColor: const Color(0xFF13131F),
      ),
      //CODIGO INSERE UM MENU LATERAL :
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Menu Lateral',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Home'),
      //         onTap: () {
      //           SectionClick(0);
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Habilidades'),
      //         onTap: () {
      //           SectionClick(1);
      //           Navigator.pop(context);
      //         },
      //       ),
      //         ListTile(
      //         title: const Text('Projetos'),
      //         onTap: () {
      //           SectionClick(2);
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Contato'),
      //         onTap: () {
      //           SectionClick(3);
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          // Menu((section) {
          //   _pageController.animateToPage(section,
          //       duration: const Duration(microseconds: 500),
          //       curve: Curves.ease);
          // }),
          Expanded(
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.vertical,
              pageSnapping: false,
              children: [
                Container(
                  color: Colors.green,
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
                             ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(200)),
                              child: Image.asset(
                                'assets/imagens/img1dev.jpg',
                                //Imagem do Programador
                                width: 300,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 30),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Oi eu sou',
                                  //Nome do Programador
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Ronald Keven',
                                  //Nome do Programador
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),                           
                          ],
                        ),
                      ],
                    ),
                  //TextButton (
                    //style: AnimatedIcons.play_pause,)
                  ),
                ),
                 Section(
                  //color: Color(0xFF13131F), Codigo original
                  color: Colors.blue,
                ),
                 Section(
                  //color: Color(0xFF13131F), Codigo original
                  color: Colors.amberAccent,
                ),
                 Section(
                  //color: Color(0xFF13131F), Codigo original
                  color: Colors.deepOrange,
                ),
                 contact_page(
                  //Chama a pagina Contato
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
