import 'package:flutter/material.dart';

class About_page extends StatelessWidget {
  const About_page ({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF13131F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Desenvolvedor Front-end com experiência em Flutter & Dart, CSS, \n'
              'SQL, JavaScript, consumo de APIs REST. Apaixonado pelo desenvolvimento de sistemas\n'
              'Cursando Analise e Desenvolvimento de Sistemas e cursando Especialização em Front-End na Academia do Flutter.',
            style: TextStyle(color: Colors.white,
            fontSize: 20,
            
            ),
           ),
          ],
        ),
      ),
    );
  }
}