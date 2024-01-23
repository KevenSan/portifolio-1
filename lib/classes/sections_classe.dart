import 'package:flutter/cupertino.dart';

class Section extends StatelessWidget {
  final Color color;
    Section({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: const Color(0xFF13131F),
      color: color,
      height: 1000,
    );
  }
}