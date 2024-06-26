import 'package:flutter/foundation.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  get currentIndex => _currentIndex;

  set currentIndex(dynamic index) {
    _currentIndex = index;
    notifyListeners();
  }
}
