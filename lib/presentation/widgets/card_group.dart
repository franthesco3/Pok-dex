import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardGroup extends StatelessWidget {
  final String name;
  final Color color;
  final String image;
  final VoidCallback onTap;

  const CardGroup({
    super.key,
    required this.name,
    required this.image,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        height: 60,
        child: Column(
          children: [
            Text(name),
            Expanded(
              child: SvgPicture.network(image),
            ),
          ],
        ),
      ),
    );
  }
}
