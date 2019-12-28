import 'package:flutter/material.dart';

class AppBarWithBackButton extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final Color textColor;
  AppBarWithBackButton({
    this.backgroundColor,
    this.iconColor,
    this.textColor,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: false,
      centerTitle: false,
      titleSpacing: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.chevron_left),
            color: iconColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text(
            "BACK",
            style: TextStyle(color: textColor, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
