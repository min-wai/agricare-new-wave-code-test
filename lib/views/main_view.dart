import 'package:agri_care/utils/main_view_background_clipper.dart';
import 'package:agri_care/widgets/forecast_horizontal_widget.dart';
import 'package:agri_care/widgets/main_view_cards.dart';
import 'package:agri_care/widgets/weather_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: MainViewBackgroundClipper(),
          child: Container(
            color: Color(0xFF7CB26F),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              WeatherWidget(),
              ForecastHorizontalWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: 100,
                    child: ListTile(
                      title: Text("အသိပေးချက်"),
                      subtitle: Text(
                          "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound -15:15:15 ကို ဖြန်းပေးသင့်သော . . . ."),
                    ),
                  ),
                ),
              ),
              
              MainViewCards(),
            ],
          ),
        )
      ],
    );
  }
}
