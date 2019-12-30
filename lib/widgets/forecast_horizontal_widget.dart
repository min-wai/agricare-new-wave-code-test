import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mock_db.dart';

class ForecastHorizontalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme:
            Theme.of(context).iconTheme.copyWith(color: Color(0xffDBEAD8)),
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: Color(0xffDBEAD8),
              bodyColor: Color(0xffDBEAD8),
              decorationColor: Color(0xffDBEAD8),
            ),
      ),
      child: Builder(
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              height: 92,
              // color: Colors.pink,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: Database.weathers.length,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 32,
                  );
                },
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final item = Database.weathers[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Text(
                          item.dayName,
                          style: Theme.of(context).textTheme.subhead,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          item.date,
                          style: Theme.of(context).textTheme.subtitle,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Icon(
                          item.icon,
                          size: Theme.of(context).textTheme.title.fontSize,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
