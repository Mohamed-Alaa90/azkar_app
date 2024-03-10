import 'package:azkar_app/tabs/Azkar/azkar.dart';
import 'package:azkar_app/tabs/Favorites/Favorites.dart';
import 'package:azkar_app/tabs/Qran/qran.dart';
import 'package:azkar_app/tabs/Sebha/sebha.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/back3.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: PageView(
          controller: controller,
          children: const [FavoritesTab(), AzkarTab(),SebhaTab(),QranTab()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              controller.animateToPage(index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease);
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.favorite),
                  label: 'المفضلة'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(FlutterIslamicIcons.quran),
                  label: ('الاذكار')),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(FlutterIslamicIcons.tasbih2),
                  label: ('السبحة')),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(FlutterIslamicIcons.quran2),
                  label: ('القران الكريم')),
            ]),
      ),
    );
  }
}
