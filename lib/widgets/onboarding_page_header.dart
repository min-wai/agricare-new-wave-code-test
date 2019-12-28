import 'package:agri_care/utils/onboarding_border_clipper.dart';
import 'package:agri_care/utils/onboarding_image_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OnBoardingBorderClipper(),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: ClipPath(
          clipper: OnBoardingImageClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * (3 / 4),
            child: Image.asset(
              "images/farmer-rice-field-with-smartphone.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
