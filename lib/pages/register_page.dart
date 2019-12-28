import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:agri_care/widgets/onboarding_page_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = "/register";

  Widget _addTextField(String hinttext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: TextField(
        decoration: InputDecoration(
          hintText: hinttext,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(left: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          OnBoardingPageHeader(),
          Container(
            color: Color(0x994A4A4A),
          ),
          // Overlay color for floating widget
          AppBarWithBackButton(
            backgroundColor: Colors.transparent,
          ),

          Positioned(
            top: 80,
            left: 8,
            right: 8,
            bottom: 16,
            child: Card(
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                child: ListView(
                  children: <Widget>[
                    // TODO Needs to refactor into global input decoration theme and separate method
                    _addTextField("အမည်"),
                    _addTextField("ဖုန်းနံပါတ်"),
                    _addTextField("ဒေသ"),
                    _addTextField("မြို့"),
                    _addTextField("ဧကအရေအတွက်"),
                    _addTextField("ကျေးရွာအုပ်စု"),
                  ],
                ),
              ),
            ),
          )
          // Container(
          //   height: 56,
          //   child: Row(
          //     children: <Widget>[
          //       BackButton(),
          //       Text("Back"),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
