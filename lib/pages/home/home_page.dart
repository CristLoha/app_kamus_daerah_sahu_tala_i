import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/model/category.dart';
import '../../data/provider/category_provider.dart';
import '../../widgets/category_button.dart';
import '../../widgets/content_list.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kategori'),
              SizedBox(height: 14),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(Category.semuaKata),
                    SizedBox(width: 16),
                    CategoryButton(Category.hewan),
                    SizedBox(width: 16),
                    CategoryButton(Category.angka),
                    SizedBox(width: 16),
                    CategoryButton(Category.tempat),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                  'Data berdasarkan kategori "${categoryToString(context.watch<CategoryProvider>().selectedCategory)}":'),
              SizedBox(height: 10),
              Expanded(
                child: ContentList(),
              ),
              SizedBox(width: 30),
              Text('Wakwaw')
            ],
          ),
        ),
      ),
    );
  }
}
