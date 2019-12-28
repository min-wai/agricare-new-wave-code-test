import 'package:agri_care/views/loan_view.dart';
import 'package:agri_care/views/main_view.dart';
import 'package:agri_care/views/store_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  static const routeName = "/main_page";

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController _pageController;
  int _currentView;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
    _currentView = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          // TODO replace setState with viewmodel for better performance
          setState(() {
            _currentView = index;
          });
        },
        controller: _pageController,
        children: <Widget>[
          MainView(),
          StoreView(),
          LoanView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade400,
        currentIndex: _currentView,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.32),
        onTap: (index) {
          print("Switching into page $index...");
          _pageController.jumpToPage(
            index,
          );
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("ပင်မ"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("ဆိုင်များ"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text("ချေးငွေ"),
          )
        ],
      ),
    );
  }
}
