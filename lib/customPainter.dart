import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Size(width: w, height: h) = size;

    Paint diamondPaint = Paint()..color = Colors.white;

    Path path = Path()
      ..moveTo(w * .1, 0)
      ..lineTo(w * .2, h * .1)
      ..lineTo(w * .1, h * .2)
      ..lineTo(0, h * .1)
      ..close();

    canvas.drawPath(path, diamondPaint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MyPainter oldDelegate) => false;
}
