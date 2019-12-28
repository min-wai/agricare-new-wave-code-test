import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/vegetable.dart';
import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:flutter/material.dart';

class CalculateHistoryPage extends StatefulWidget {
  static const routeName = "/calculateHistoryPage";

  @override
  _CalculateHistoryPageState createState() => _CalculateHistoryPageState();
}

class _CalculateHistoryPageState extends State<CalculateHistoryPage> {
  Widget _buildItem(Vegetable vegetable) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(
              color: Color(0xFFD8D8D8),
            )),
            child: Image.asset(vegetable.imageLocation),
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${vegetable.name}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Color(0x99000000)),
              ),
              Text(
                "${vegetable.date}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Color(0x99000000)),
              ),
              Text(
                "${vegetable.season}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Color(0x99000000)),
              ),
              Text(
                "${vegetable.cost}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Color(0x99000000)),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarWithBackButton(
            backgroundColor: Theme.of(context).canvasColor,
            textColor: Color(0xFFF7CA6C),
            iconColor: Colors.green.shade400,
          ),
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero.copyWith(right: 16.0, left: 16.0),
              itemCount: Database.vegetables.length,
              itemBuilder: (context, index) {
                return _buildItem(Database.vegetables[index]);
              },
              separatorBuilder: (context, index) {
                return Divider(height: 32.0,);
              },
            ),
          )
        ],
      ),
    );
  }
}
