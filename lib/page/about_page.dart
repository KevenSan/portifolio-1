import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage ({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF13131F),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Desenvolvedor Front-end com experiência em Flutter & Dart, Html, JavaScript e CSS, \n'
                   'SQL, Delphi e consumo de APIs REST. Apaixonado pelo desenvolvimento de sistemas\n'
                   'Cursando Análise e Desenvolvimento de Sistemas e cursando Especialização em Front-End na Academia do Flutter.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.italic
              
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}