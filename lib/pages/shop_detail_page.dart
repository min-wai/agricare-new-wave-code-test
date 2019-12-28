import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/pest.dart';
import 'package:agri_care/models/shop.dart';
import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopDetailPage extends StatelessWidget {
  static const routeName = "/shopDetailPage";

  @override
  Widget build(BuildContext context) {
    final shop = ModalRoute.of(context).settings.arguments as Shop;

    Widget _buildCard(Pest pest) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 4.0,
            child: Center(
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset(
                  pest.imageLocation,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            "${pest.name}",
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.start,
          ),
          Text(
            "${pest.amount}",
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            "${pest.price}",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(
            height: 12,
          )
        ],
      );
    }

    return Scaffold(
      body: Column(
        children: <Widget>[
          AppBarWithBackButton(
            backgroundColor: Theme.of(context).canvasColor,
            textColor: Color(0xFFF7CA6C),
            iconColor: Colors.green.shade400,
          ),
          Container(
            height: 100,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      )),
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        shop.imageLocation,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${shop.name}",
                        style: Theme.of(context).textTheme.subhead,
                      ),
                      Text(
                        "ငပုတော၊ ပုသိမ်ကြီးမြို့၊ ဧရာဝတီတိုင်း",
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Theme(
              // Override outline input border from global themedata
              data: ThemeData.light(),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                    hintText: "ပစ္စည်းအမျိုးအစားရှာရန်",
                    isDense: true,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.count(
                childAspectRatio: 0.62,
                crossAxisCount: 3,
                children: List.generate(Database.pests.length, (index) {
                  return _buildCard(Database.pests[index]);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ShopDetailArguments {
  final Shop shop;
  ShopDetailArguments({
    this.shop,
  });
}
