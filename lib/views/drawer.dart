import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // title: Text(' Page'),
      ),
      body: ListView(
                 // mainAxisSize: MainAxisSize.min,
                  children: [
                  // Image.asset('images/Profile.png'),
                  //  SizedBox(height: 16.0),
                   Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: Row(
                        children: [
                          Image.asset('images/Profile.png'),
                          SizedBox(width: 20,),
                          Text(
                            'Hello',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        'Macy Johnson',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.0),
                   
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 50,
                      child: Divider()),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 20,),
                          Text('Profile',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                                            SizedBox(height: 20,),

                       Row(
                        children: [
                          Icon(Icons.menu_open),
                          SizedBox(width: 20,),
                          Text('All Bookings',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(height: 20,),
                       Row(
                        children: [
                          Icon(Icons.notification_add_rounded),
                          SizedBox(width: 20,),
                          Text('Favourites',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                       SizedBox(height: 20,),
                       Row(
                        children: [
                          Icon(Icons.mail),
                          SizedBox(width: 20,),
                          Text('Get Help',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                       SizedBox(height: 15,),
                       Row(
                        children: [
                          Icon(Icons.calendar_month_sharp),
                          SizedBox(width: 20,),
                          Text('Covid Advisory',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                                             SizedBox(height: 15,),

                      Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 20,),
                          Text('Rate us',style: TextStyle(fontWeight: FontWeight.bold),)
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
            // يمكنك إضافة المزيد من العناصر هنا إذا لزم الأمر
        
    );
    
  
  }
}
