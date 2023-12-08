import 'package:flutter/material.dart';

class TabBarProvider extends ChangeNotifier {
  int _currentTabIndex = 0;

  int get currentTabIndex => _currentTabIndex;

  void setCurrentTabIndex(int index) {
    _currentTabIndex = index;
    notifyListeners();
  }
}
