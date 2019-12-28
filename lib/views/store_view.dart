import 'package:agri_care/models/shop.dart';
import 'package:agri_care/pages/shop_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mock_db.dart';

class StoreView extends StatefulWidget {
  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  Widget _createShop(Shop shop) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ShopDetailPage.routeName,
          arguments: shop,
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  width: 80,
                  height: 80,
                  child: Image.asset(
                    shop.imageLocation,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // TODO Text colors need tweaking
                    Text(
                      "${shop.name}",
                      style: Theme.of(context).textTheme.subhead,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "ငပုတော၊ ပုသိမ်ကြီးမြို့၊ ဧရာဝတီတိုင်း",
                      style: Theme.of(context).textTheme.subtitle,
                    )
                  ],
                ),
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
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
        title: Text(
          "Shop List",
          style: TextStyle(
            color: Color(0xA2000000),
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: Database.shops.length,
        itemBuilder: (context, index) {
          return _createShop(Database.shops[index]);
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
