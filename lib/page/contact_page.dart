import 'package:flutter/material.dart';
//import 'package:portifolio/classes/sections_classe.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: camel_case_types
class contact_page extends StatefulWidget {
    contact_page({super.key});

  @override
  State<contact_page> createState() => _contact_pageState();
}

class _contact_pageState extends State<contact_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
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
               GestureDetector(
                //Imagem do LinkeDin
                onTap: () {
                  //OnTap == AoClicar
                 launchUrl(Uri.parse('https://www.linkedin.com/in/keven-santos-091234287/'));
                },
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(50)),
                 child: Image.asset(
                   'assets/imagens/linkedin.jpg',
                   width: 50,
                   height: 50,
                 ),
               ),
               ),
               
               const SizedBox(width: 50,),
               //Sizebox para dar espaço 
               
               GestureDetector(
                onTap:() {
                  launchUrl(Uri.parse('https://api.whatsapp.com/send?phone=5527998007596'));
                },
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(50)),
                 child: Image.asset(
                   'assets/imagens/whatsapp.jpg',
                   width: 50,
                   height: 50,
                 ),
               ),
               ),
               
               const SizedBox(width: 50,),
               //Sizebox para dar espaço

               GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse('URL DO EMAIL'));
                },
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(50)),
                 child: Image.asset(
                   'assets/imagens/email.jpg',
                   width: 50,
                   height: 50,
                 ),
               ),
               ),

               const SizedBox(width: 50,),
               //Sizebox para dar espaço
               
               GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse('Url do GitHub'));
                },
               child: ClipRRect(
                 borderRadius: const BorderRadius.all(Radius.circular(50)),
                 child: Image.asset(
                   'assets/imagens/github.jpg',
                   width: 50,
                   height: 50,
                 ),
               ),
               ),
               ],
           )
         ],
       ),
      ),
    );      
  }
}