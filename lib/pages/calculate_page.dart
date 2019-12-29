import 'package:agri_care/viewmodels/calculate_page_model.dart';
import 'package:agri_care/views/calculate_page_result_view.dart';
import 'package:agri_care/views/calculate_page_stepper_view.dart';
import 'package:agri_care/widgets/appbar_with_backbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CalculatePage extends StatefulWidget {
  static const routeName = "/calculatePage";

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppBarWithBackButton(
            backgroundColor: Theme.of(context).canvasColor,
            textColor: Color(0xFFF7CA6C),
            iconColor: Colors.green.shade400,
          ),
          ChangeNotifierProvider.value(
            value: CalculatePageModel(),
            child: Consumer<CalculatePageModel>(
              builder: (context, model, child) {
                return model.done
                    ? Expanded(
                        child: ResultView(),
                      )
                    : Expanded(
                        child: StepperView(),
                      );
              },
            ),
          )
          // Container(),
        ],
      ),
    );
  }
}
