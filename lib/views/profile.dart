import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            bottom: 400,
            child: Image.asset(
              'images/back.jpg',
               fit: BoxFit.contain,
            ),
          ),
          // Profile Container with CircleAvatar
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Container(
                height: 500,
                width: 500,
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 226, 232, 237).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: ListView(
                 // mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: CircleAvatar(
                        radius: 40.0, // زِد القيمة هنا لتكبير الحجم
                        backgroundImage:
                            AssetImage('images/Profile.png'),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text(
                        'Macy Johnson',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text(
                        'Baguio, Philippines',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text('I like the beach, mountains, forest and everything about nature! :)'),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 300,
                      child: Divider()),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.credit_card),
                          SizedBox(width: 20,),
                          Text('Payment Details',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                                            SizedBox(height: 20,),

                       Row(
                        children: [
                          Icon(Icons.health_and_safety),
                          SizedBox(width: 20,),
                          Text('Covid Advisory',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                          Icon(Icons.supervised_user_circle),
                          SizedBox(width: 20,),
                          Text('Referral Code',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                       SizedBox(height: 20,),
                       Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(width: 20,),
                          Text('Settings',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                       SizedBox(height: 15,),
                       Row(
                        children: [
                          Icon(Icons.logout),
                          SizedBox(width: 20,),
                          Text('Logout',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                      SizedBox(height: 20,),
                    Row(children: [
                      Icon(Icons.help,color:Color(0xFF1262AE) ,),
                      SizedBox(width: 10,),
                      Text('Have questions? We are here to help',style: TextStyle(color: Color(0xFF1262AE)),)
                    ],)  
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
