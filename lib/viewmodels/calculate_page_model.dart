import 'package:flutter/material.dart';

class CalculatePageModel extends ChangeNotifier {
  bool _done = false;

  bool get done => _done;

  void switchView(bool done) {
    _done = done;
    notifyListeners();
  }
}
