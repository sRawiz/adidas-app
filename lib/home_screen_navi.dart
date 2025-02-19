import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

class HomeScreenNavi extends StatefulWidget {
  const HomeScreenNavi({super.key});

  @override
  State<HomeScreenNavi> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreenNavi> {
  int _selectedIndex = 0;

  final Map<int, Map<String, Widget>> _navigationMap = {
    0: {"title": const Text("Home"), "screen": HomeScreen()},

  };

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'SHOP',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),   
              )
          ],
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: 
              _navigationMap.values.map((page) => page["screen"]!).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: 
                  Image.asset("assets/icons/logo.png", width: 30, height: 30,),
              label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
              icon: Image.asset("assets/icons/adiclub.png",
                width: 45, height: 45,),
              label: ""),
          ],
        ),

      )
    );
  }
}

