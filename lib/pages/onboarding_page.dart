import 'package:agri_care/pages/main_page.dart';
import 'package:agri_care/pages/register_page.dart';
import 'package:agri_care/widgets/onboarding_page_header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  static const routeName = "/";
  Future<void> _askForUserType(BuildContext context) async {
    await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            children: <Widget>[
              SimpleDialogOption(
                child: Text(
                  "လယ်သမား",
                  // style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
              Divider(
                indent: 16,
                endIndent: 16,
                thickness: 2,
              ),
              SimpleDialogOption(
                child: Text(
                  "အရောင်းဆိုင်",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          OnBoardingPageHeader(),
          Align(
            alignment: Alignment.bottomCenter,
            // bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * (1 / 3),
              // color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.center,
                      buttonMinWidth:
                          MediaQuery.of(context).size.width * (2 / 5),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 24),
                          child: RaisedButton(
                            onPressed: () {
                              _askForUserType(context);
                            },
                            child: Text("LOGIN"),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, MainPage.routeName);
                          },
                          child: Text("SKIP"),
                        )
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterPage.routeName);
                    },
                    child: Text("Register for a new account."),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
