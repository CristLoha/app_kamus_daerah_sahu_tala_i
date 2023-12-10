import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/model/category.dart';
import '../data/provider/category_provider.dart';

class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = context.watch<CategoryProvider>().selectedCategory;
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${categoryToString(selectedCategory)} Item $index'),
        );
      },
    );
  }
}
