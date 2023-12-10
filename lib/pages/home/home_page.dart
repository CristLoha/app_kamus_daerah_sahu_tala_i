import 'package:app_kamus_daerah_sahu_tala_i/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/model/category.dart';
import '../../data/provider/bottom_navigation_bar_provider.dart';
import '../../data/provider/category_provider.dart';
import '../../widgets/category_button.dart';
import '../../widgets/content_list.dart';
import '../../widgets/custom_title.dart';
import '../bottom_navigation_bar/bottom_navigation_bar_page.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomTitle(
                      name: 'Kategori',
                    ),
                    GestureDetector(
                      onTap: () => Provider.of<BottomNavigationBarProvider>(
                              context,
                              listen: false)
                          .currentIndex = 1,
                      child: Text(
                        'Semua ->',
                        style: darkRedTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 14),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
