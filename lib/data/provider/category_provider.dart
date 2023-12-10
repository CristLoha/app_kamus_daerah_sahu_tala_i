import 'package:flutter/material.dart';
import '../model/category.dart';

class CategoryProvider with ChangeNotifier {
  Category _selectedCategory = Category.semuaKata;

  Category get selectedCategory => _selectedCategory;

  set selectedCategory(Category category) {
    _selectedCategory = category;
    notifyListeners();
  }
}
