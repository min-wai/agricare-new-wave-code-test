import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/crop.dart';
import 'package:agri_care/pages/order_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final _controlHeight = 56.0;

  Future<void> _askForOptions(BuildContext context) async {
    await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            children: <Widget>[
              SimpleDialogOption(
                child: Text(
                  "စတင်စိုက်ပျိုးမည်",
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
                  "ချေးငွေလျှောက်ရန်",
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
                  "အမှာစာတင်မည်",
                  textAlign: TextAlign.center,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, OrderPage.routeName);
                },
              ),
            ],
          );
        });
  }

  Widget _createCard(Crop crop) {
    return Padding(
      padding: EdgeInsets.only(right: 4.0, left: 4.0),
      child: Stack(
        children: <Widget>[
          Card(
            elevation: 12.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 8.0,
              ).copyWith(
                top: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF7CB26F),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  // TODO change font color
                                  Text(
                                    "${crop.type}",
                                  ),
                                  Text("${crop.amount} ${crop.unit}"),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("${crop.area} Acres"),
                  Divider(
                    thickness: 2.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "ကျသင့်ငွေ ${crop.cost} Ks",
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 4.0,
            right: 8.0,
            child: Icon(Icons.check),
          )
        ],
      ),
    );
  }

  Widget _spaceForControls() {
    return Container(
      height: _controlHeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return _createCard(Database.crops[index]);
                  },
                  itemCount: Database.crops.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 12,
                    );
                  },
                ),
              ),
              _spaceForControls(),
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          left: 0.0,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("ပယ်ဖျက်မည်"),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  _askForOptions(context);
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("သိမ်းမည်"),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
