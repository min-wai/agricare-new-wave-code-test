import 'package:agri_care/viewmodels/calculate_page_model.dart';
import 'package:agri_care/widgets/custom_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class StepperView extends StatefulWidget {
  @override
  _StepperViewState createState() => _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  List<CustomStep> steps;
  int _currentStep = 0;
  String _radioValue = "ဆောင်းရာသီ";

  @override
  Widget build(BuildContext context) {
    steps = <CustomStep>[
      _firstStep(),
      _secondStep(),
      _thirdStep(),
      _fourthStep(),
    ];
    return CustomStepper(
      controlsBuilder: (BuildContext context,
          {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
        return ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 4),
              child: Text("နောက်သို့"),
              onPressed: () {
                onStepCancel();
              },
            ),
            RaisedButton(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28, vertical: 4),
                child: Text("ရှေ့သို့"),
              ),
              onPressed: () {
                onStepContinue();
              },
            ),
          ],
        );
      },
      onStepContinue: next,
      onStepCancel: () {
        goTo(_currentStep - 1);
      },
      currentStep: _currentStep,
      onStepTapped: (index) {
        goTo(index);
      },
      type: CustomStepperType.horizontal,
      steps: steps,
    );
  }

  next() {
    _currentStep + 1 != steps.length
        ? goTo(_currentStep + 1)
        : setState(() => Provider.of<CalculatePageModel>(context, listen: false)
            .switchView(true));
  }

  goTo(int step) {
    setState(() {
      _currentStep = math.max(step, 0);
    });
  }

  CustomStep _firstStep() {
    return CustomStep(
      state:
          _currentStep == 0 ? CustomStepState.editing : CustomStepState.indexed,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // TODO refactor title into separate method
          Text(
            "စိုက်ပျိုးဒေသ",
            style: Theme.of(context).textTheme.title,
          ),
          DropdownButtonFormField(
            // isDense: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            hint: Container(
              child: Text(
                "ဒေသ",
                style: TextStyle(
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            items: [],
            onChanged: (item) {},
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            hint: Text("မြို့နယ်"),
            items: [],
            onChanged: (item) {},
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            // isDense: true,
            hint: Text("ကျေးရွာအုပ်စု"),
            items: [],
            onChanged: (item) {},
          ),
          SizedBox(
            height: 20,
          ),
          DropdownButtonFormField(
            // isDense: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            hint: Text("ကျေးရွာ"),
            items: [],
            onChanged: (item) {},
          ),
        ],
      ),
      icon: Icons.location_on,
      title: Text(""),
    );
  }

  CustomStep _secondStep() {
    return CustomStep(
      state:
          _currentStep == 1 ? CustomStepState.editing : CustomStepState.indexed,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "စိုက်ပျိုးဒေသ",
            style: Theme.of(context).textTheme.title,
          ),
          // TODO fix radio button padding
          RadioListTile(
            title: Text("နွေရာသီ"),
            groupValue: _radioValue,
            onChanged: (value) {
              setState(() {
                _radioValue = value;
              });
            },
            value: "နွေရာသီ",
          ),
          RadioListTile(
            title: Text("မိုးရာသီ"),
            groupValue: _radioValue,
            onChanged: (value) {
              setState(() {
                _radioValue = value;
              });
            },
            value: "မိုးရာသီ",
          ),
          RadioListTile(
            title: Text("ဆောင်းရာသီ"),
            groupValue: _radioValue,
            onChanged: (value) {
              setState(() {
                _radioValue = value;
              });
            },
            value: "ဆောင်းရာသီ",
          ),
        ],
      ),
      icon: Icons.pie_chart,
      title: Text(""),
    );
  }

  CustomStep _thirdStep() {
    return CustomStep(
      state:
          _currentStep == 2 ? CustomStepState.editing : CustomStepState.indexed,
      title: Text(""),
      icon: Icons.watch,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "သီးနှံအမျိုးအစား",
            style: Theme.of(context).textTheme.title,
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            onChanged: (value) {},
            items: [],
            hint: Text("အမျိုးအစားရွေးရန်"),
          )
        ],
      ),
    );
  }

  CustomStep _fourthStep() {
    return CustomStep(
        title: Text(""),
        state: _currentStep == 3
            ? CustomStepState.editing
            : CustomStepState.indexed,
        icon: Icons.view_stream,
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "စိုက်ပျိုးမည့်ဧက",
              style: Theme.of(context).textTheme.title,
            ),
            TextFormField(
              // decoration: InputDecoration(
              //     contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
              initialValue: "00",
              keyboardType: TextInputType.number,
              inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
            )
          ],
        ));
  }
}
