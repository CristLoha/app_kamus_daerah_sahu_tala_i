import 'package:flutter/material.dart';

enum Category {
  semuaKata,
  hewan,
  angka,
  tempat,
}

class CategoryProvider with ChangeNotifier {
  Category _selectCategory = Category.semuaKata;

  Category get selectCategory => _selectCategory;

  set selectCategory(Category category) {
    _selectCategory = category;
    notifyListeners();
  }
}
