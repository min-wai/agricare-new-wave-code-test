import 'package:flutter/rendering.dart';

class MainViewBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * (3 / 5) - 24);
    // path.moveTo(0, size.height * (3 / 4));
    path.quadraticBezierTo((size.width * (3 / 4)) - 8,
        size.height * (3 / 5) + 68, size.width, size.height * (1 / 2) + 53);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
