import 'package:flutter/rendering.dart';

class OnBoardingBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * (3 / 4) + 2);
    // path.moveTo(0, size.height * (3 / 4));
    path.quadraticBezierTo(
        (size.width / 2) - 8, size.height + 4, size.width, size.height - 16);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
