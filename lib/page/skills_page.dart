import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  final Color color;
  const SkillsPage({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text(
          'Habilidades',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
