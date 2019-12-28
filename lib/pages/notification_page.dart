import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/app_notification.dart';
import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static const routeName = "/notificationPage";

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  Widget _createNotification(AppNotification notification) {
    return Card(
      elevation: 16.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "${notification.title}",
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "${notification.date}",
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(
                height: 12.0,
              ),
              Text("${notification.content}"),
            ],
          ),
        ),
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
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              itemCount: Database.notifications.length,
              itemBuilder: (context, index) {
                return _createNotification(Database.notifications[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
