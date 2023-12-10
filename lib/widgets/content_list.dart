import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/model/category.dart';
import '../data/provider/category_provider.dart';

class ContentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selectedCategory = context.watch<CategoryProvider>().selectedCategory;

    // Implement logic to display data based on the selected category
    // For example, you can use a ListView.builder
    return ListView.builder(
      itemCount: 10, // Number of items to display
      itemBuilder: (context, index) {
        // Replace this widget with the actual data
        return ListTile(
          title: Text('${categoryToString(selectedCategory)} Item $index'),
        );
      },
    );
  }
}
