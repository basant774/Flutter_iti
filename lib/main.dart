import 'package:flutter/material.dart';
import 'package:itinav/views/booking.dart';
import 'package:itinav/views/explore.dart';
import 'package:itinav/views/offers.dart';
import 'package:itinav/views/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // متغير لتخزين الفهرس الحالي
  int _selectedIndex = 0;

  // دالة لتحديث الفهرس الحالي عند النقر على عنصر في الـ BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter Demo'),
        // ),
        body: IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            Explore(),
            Booking(),
           // Center(child: Text('Explore Page')),
            //Center(child: Text('Booking Page')),
            Center(child: Text('Search Page')),
            Offers(),
           // Center(child: Text('Offers Page')),
           // Center(child: Text('Profile Page')),
           ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue, // لون العنصر المحدد
          unselectedItemColor: Colors.grey, // لون العنصر غير المحدد
          selectedLabelStyle: TextStyle(color: Colors.blue), // لون النص المحدد
          unselectedLabelStyle: TextStyle(color: Colors.grey), // لون النص غير المحدد
          currentIndex: _selectedIndex, // الفهرس الحالي
          onTap: _onItemTapped, // الدالة التي يتم استدعاؤها عند النقر
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              label: 'Booking',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_sharp),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
