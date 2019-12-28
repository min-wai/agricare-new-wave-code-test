import 'package:flutter/rendering.dart';

class OnBoardingImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * (3 / 4));
    // path.moveTo(0, size.height * (3 / 4));
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 24);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
