import 'package:flutter/material.dart';

class QuadClipper extends CustomClipper<Path> {
  final double quadSize;

  QuadClipper({required this.quadSize});

  @override
  Path getClip(Size size) {
    final path = Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    final quadRect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: quadSize,
      height: quadSize,
    );

    path.addRect(quadRect);
    path.fillType = PathFillType.evenOdd; // вырезаем середину
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
