
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotways/utils/color_codes.dart';

bodyWithBackground(Widget child) => CustomPaint(
      painter: BackgroundPainter(),
      child: Scrollbar(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: child,
        ),
      ),
    );

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRRect(RRect.fromRectAndCorners(
      Rect.fromLTRB(0, 0, width, 80),
      bottomLeft: Radius.circular(30),
      bottomRight: Radius.circular(30),
    ));

    paint.color = ColorCodes.colorPrimary;

    canvas.drawPath(mainBackground, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
