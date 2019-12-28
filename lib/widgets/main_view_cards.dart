import 'package:agri_care/pages/calculate_history_page.dart';
import 'package:agri_care/pages/calculate_page.dart';
import 'package:agri_care/pages/notification_page.dart';
import 'package:flutter/material.dart';

class MainViewCards extends StatelessWidget {
  final _cardSize = 116.0;
  final _cornerRadius = 16.0;

  @override
  Widget build(BuildContext context) {
    // TODO replace with gridview
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(color: Colors.green.shade400),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _showCard(
                  "ရှာဖွေ",
                  Icons.search,
                  null,
                  null,
                ),
                SizedBox(
                  width: 32,
                ),
                _showCard(
                  "အကြောင်းကြား",
                  Icons.notifications,
                  5,
                  () {
                    Navigator.pushNamed(context, NotificationPage.routeName);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _showCard(
                  "တွက်ချက်ပြီး",
                  Icons.show_chart,
                  3,
                  () {
                    Navigator.pushNamed(
                        context, CalculateHistoryPage.routeName);
                  },
                ),
                SizedBox(
                  width: 32,
                ),
                _showCard(
                  "သီးနှံစိုက်ပျိုးမှု တွက်ချက်ရန်",
                  Icons.table_chart,
                  null,
                  () {
                    Navigator.pushNamed(context, CalculatePage.routeName);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _showCard(String title, IconData icon, int n, Function onTap) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(_cornerRadius),
            )),
            elevation: 16,
            child: Container(
              height: _cardSize,
              width: _cardSize,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 52,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        Theme(
          data: ThemeData.dark(),
          child: Builder(
            builder: (context) {
              if (n == 0 || n == null) {
                return Container(
                  color: Colors.transparent,
                  height: 8,
                  width: 8,
                );
              }
              return Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFFF3D3D)),
                  child: Center(
                    child: Text("$n",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subhead),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
