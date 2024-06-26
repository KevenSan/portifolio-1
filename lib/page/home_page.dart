import 'package:flutter/material.dart';
import 'package:portifolio/page/about_page.dart';
import 'package:portifolio/page/contact_page.dart';
import 'package:portifolio/page/projects_page.dart';
import 'package:portifolio/page/skills_page.dart';
import '../classes/menu_classe.dart';
import 'package:portifolio/classes/sections_classe.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: const Text(
          'Portifólio',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Menu((section) {
            _pageController.animateToPage(section,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease);
          }),
        ],
        backgroundColor: const Color(0xFF13131F),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(); // Layout para telas maiores (tablet)
          } else {
            return _buildTallLayout(); // Layout para telas menores (smartphone)
          }
        },
      ),
    );
  }

  Widget _buildWideLayout() {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      pageSnapping: false,
      children: [
        Container(
          color: const Color(0xFF13131F),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(200)),
                  child: Image.asset(
                    'assets/imagens/img1dev.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 300,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Olá, eu sou o',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ronald Santos',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text(
                        'Desenvolvedor FullStack',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const AboutPage(),
        SkillsPage(),
        Section(color: Colors.deepOrange),
        const ContactPage(),
      ],
    );
  }

  Widget _buildTallLayout() {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      pageSnapping: false,
      children: [
        Container(
          color: const Color(0xFF13131F),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(200)),
                  child: Image.asset(
                    'assets/imagens/img1dev.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Olá, eu sou o',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Ronald Santos',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple,
                        ),
                      ),
                      Text(
                        'Desenvolvedor FullStack',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const AboutPage(),
        const SkillsPage(),
        const ProjectPage(),
        const ContactPage(),
      ],
    );
  }
}
