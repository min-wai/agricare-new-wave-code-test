import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class WeatherWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Builder(
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "33°",
                  style: Theme.of(context).textTheme.display1,
                ),
                subtitle: Text("Sunny 33 / 26°C"),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 28),
                  child: Icon(
                    WeatherIcons.day_cloudy,
                    size: Theme.of(context).textTheme.display3.fontSize,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
