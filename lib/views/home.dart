import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/Profile.png'), // استبدل بـ مسار الصورة
                  radius: 40,
                ),
                SizedBox(width: 16),
                Text(
                  'FickleFlight',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            leading: const Icon(Icons.home),
            onTap: () {
              Navigator.pop(context); // إغلاق الدرج عند اختيار العنصر
            },
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {
              Navigator.pop(context); // إغلاق الدرج عند اختيار العنصر
            },
          ),
          // أضف المزيد من العناصر هنا إذا لزم الأمر
        ],
      ),
    );
  }
}
