import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../data/provider/bottom_navigation_bar_provider.dart';
import '../home/home_page.dart';

class BottomNavigationBarpage extends StatelessWidget {
  static const routeName = '/bottom_bar';
  const BottomNavigationBarpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(context),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _getPage(BuildContext context) {
    int currentIndex =
        Provider.of<BottomNavigationBarProvider>(context).currentIndex;

    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return Center(
          child: Text('Kategori'),
        );
      case 2:
        return Center(
          child: Text('Favorit'),
        );
      case 3:
        return Center(
          child: Text('Pengaturan'),
        );
      default:
        return Container();
    }
  }
}

Widget _bottomNavigationBar(BuildContext context) {
  return Consumer<BottomNavigationBarProvider>(
      builder: (_, bottomProvider, __) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).colorScheme.primary,
      unselectedItemColor: Colors.grey[500],
      backgroundColor: Colors.white,
      currentIndex: bottomProvider.currentIndex,
      onTap: (value) => bottomProvider.currentIndex = value,
      items: [
        _buildBottomNavigationBarItem(
          icon: bottomProvider.currentIndex == 0
              ? EvaIcons.home
              : EvaIcons.homeOutline,
          label: 'Beranda',
        ),
        _buildBottomNavigationBarItem(
          icon: bottomProvider.currentIndex == 1
              ? EvaIcons.grid
              : EvaIcons.gridOutline,
          label: 'Kategori',
        ),
        _buildBottomNavigationBarItem(
          icon: bottomProvider.currentIndex == 2
              ? EvaIcons.heart
              : EvaIcons.heartOutline,
          label: 'Favorit',
        ),
        _buildBottomNavigationBarItem(
          icon: bottomProvider.currentIndex == 3
              ? EvaIcons.settings
              : EvaIcons.settingsOutline,
          label: 'Pengaturan',
        ),
      ],
    );
  });
}

BottomNavigationBarItem _buildBottomNavigationBarItem({
  required IconData icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    label: label,
  );
}
