import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/loan_source.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoanView extends StatefulWidget {
  @override
  _LoanViewState createState() => _LoanViewState();
}

class _LoanViewState extends State<LoanView> {
  Widget _buildRow(
    BoxConstraints constraints,
    LoanSource first,
    LoanSource second,
  ) {
    return Row(
      children: <Widget>[
        _buildCard(first, constraints),
        SizedBox(
          width: 24,
        ),
        second == null ? Container() : _buildCard(second, constraints)
      ],
    );
  }

  Widget _buildCard(LoanSource loanSource, BoxConstraints constraints) {
    final cardSize = constraints.biggest.width * (1 / 2) - 20;
    return Card(
      elevation: 8.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Container(
        width: cardSize,
        height: cardSize,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(loanSource.imageLocation, fit: BoxFit.cover),
            ),
            SizedBox(
              height: cardSize * (1 / 4),
              child: Text(
                "${loanSource.name}",
                style: Theme.of(context).textTheme.subhead,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade400,
        title: Text(
          "ချေးငွေ",
          style: TextStyle(
            color: Color(0xA2000000),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: <Widget>[
                // TODO fix hard coding indexes
                // TODO layout needs fixing for portrait mode
                // TODO replace with GridView
                _buildRow(constraints, Database.loanSources[0],
                    Database.loanSources[1]),
                _buildRow(constraints, Database.loanSources[2],
                    Database.loanSources[3]),
                _buildRow(constraints, Database.loanSources[4], null),
              ],
            );
          },
        ),
      ),
    );
  }
}
