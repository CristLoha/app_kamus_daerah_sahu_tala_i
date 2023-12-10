import 'package:app_kamus_daerah_sahu_tala_i/common/styles.dart';
import 'package:app_kamus_daerah_sahu_tala_i/data/model/category.dart';
import 'package:app_kamus_daerah_sahu_tala_i/data/provider/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryButton extends StatelessWidget {
  final Category category;

  const CategoryButton(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    final categoryProvider = context.read<CategoryProvider>();

    return GestureDetector(
      onTap: () {
        categoryProvider.selectedCategory = category;
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: categoryProvider.selectedCategory == category
              ? darkRed
              : transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: categoryProvider.selectedCategory == category
                ? transparent
                : charcoalGray,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Text(
            categoryToString(category),
            style: TextStyle(
              color: categoryProvider.selectedCategory == category
                  ? Colors.white
                  : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
