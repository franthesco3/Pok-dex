import 'package:flutter/material.dart';

class TagType extends StatelessWidget {
  final String type;
  final Color color;

  const TagType({super.key, required this.type, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Text(
        type,
        style: TextStyle(
          color: color,
        ),
      ),
    );
    ;
  }
}
