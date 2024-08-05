import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text('Bookings')),
          leading: Icon(Icons.arrow_back),
          actions: [
            IconButton(
              icon: Icon(Icons.settings), // الأيقونة التي ستظهر على اليمين
              onPressed: () {
                // اضف هنا الكود الذي تريد تنفيذه عند الضغط على الأيقونة
              },
            ),
          ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 20),
            child: Text(
              'Upcoming Bookings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset('images/Booking Image.png'),
          SizedBox(height: 40,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SIN',
                      style: TextStyle(
                          color: Color(0xFF1262AE),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Singapore',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                      Text(
                      'Terminal 1',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
          const    SizedBox(
                width: 30,
              ),
              Icon(
                Icons.circle,
                color: Color(0xFF1262AE),
                size: 10,
              ),
              Text('----------'),
              Center(
                child: Container(
                  width: 25, // Circle width
                  height: 25, // Circle height
                  decoration: const BoxDecoration(
                    color: Color(0xFF1262AE), // Background color
                    shape: BoxShape.circle, // Circle shape
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.flight, // Icon you want
                      color: Colors.white, // Icon color
                      size: 25, // Icon size
                    ),
                  ),
                ),
              ),
              const Text('----------'),
              const Icon(
                Icons.circle,
                color: Color(0xFF1262AE),
                size: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LAX',
                      style: TextStyle(
                          color: Color(0xFF1262AE),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Los Angeles',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                      Text(
                      'Terminal 4',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'United Airlines',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                   Icon(Icons.alarm),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '01 hr 40min',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Show more details...',style: TextStyle(color: Color(0xFF1262AE),fontSize: 18),),
          ),
          SizedBox(height: 20,),
    ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF99A0E), // تحديد لون الخلفية
          ),
          onPressed: () {
            // الكود الذي سيتم تنفيذه عند الضغط على الزر
          },
          child: Text('Edit Booking',style: TextStyle(color: Colors.white),),
        ),
      
        ],
      ),
    );
  }
}
