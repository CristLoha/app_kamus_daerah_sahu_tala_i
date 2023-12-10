import 'package:app_kamus_daerah_sahu_tala_i/common/styles.dart';
import 'package:app_kamus_daerah_sahu_tala_i/data/provider/category_provider.dart';
import 'package:app_kamus_daerah_sahu_tala_i/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/provider/bottom_navigation_bar_provider.dart';
import 'firebase_options.dart';
import 'pages/bottom_navigation_bar/bottom_navigation_bar_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryProvider(),
        ),
      ],
      child: const AppSahu(),
    ),
  );
}

class AppSahu extends StatelessWidget {
  const AppSahu({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kamus Bahasa Sahu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: darkRed),
        useMaterial3: true,
      ),
      initialRoute: BottomNavigationBarpage.routeName,
      routes: {
        BottomNavigationBarpage.routeName: (context) =>
            const BottomNavigationBarpage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
