import 'package:agri_care/mock_db.dart';
import 'package:agri_care/models/shop.dart';
import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  static const routeName = "/orderPage";

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final List<String> itemTypes = <String>[
    "Compound -15:15:15 (basal) - 150Kg",
    "Lime - 150Viss",
    "Trichoderma - 150 Kg",
  ];

  Widget _showCardRow(String itemType) {
    return Container(
      height: 200,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          elevation: 16.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$itemType",
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(height: 12.0),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: Database.shops.length,
                    itemBuilder: (context, index) {
                      return _buildShop(Database.shops[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 8.0,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShop(Shop shop) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
          child: Image.asset(shop.imageLocation, fit: BoxFit.cover),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          "${shop.name}",
          // style: Theme.of(context).textTheme.caption,
        ),
        Text("${shop.itemPrice}"),
      ],
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              "အမှာစာတင်ရန် သင်ကြိုက်နှစ်သက်သည့်ဆိုင်များကို ရွေးချယ်နိုင်သည်",
              style: Theme.of(context).textTheme.body2,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: itemTypes.length,
              itemBuilder: (context, index) {
                return _showCardRow(itemTypes[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 8.0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
