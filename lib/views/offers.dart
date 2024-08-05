import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                  leading: Icon(Icons.arrow_back),

        title: Center(child: Text('Offers',style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 246, 243, 243),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 20,
                        color: Color(0xFF32D4AD),
                        child: Center(child: Text('Limited offer!',style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(width: 250,),
                      Icon(Icons.heart_broken_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Get 20% discount with your Master credit cards',style: TextStyle(fontSize: 20),),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/Offer Image.png'),
                    
                  ),
                  Column(
                    children: [
                      Text('Use your mastercard with any transaction'),
                      Text('and get 20% discount instantly!'),

                    ],
                  ),
                 // Icon(Icons.arrow_back_ios_new_sharp,)
                ],)
                
              ],
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 246, 243, 243),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 20,
                        color: Color(0xFF32D4AD),
                        child: Center(child: Text('Limited offer!',style: TextStyle(color: Colors.white),)),
                      ),
                      SizedBox(width: 250,),
                      Icon(Icons.heart_broken_outlined)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('25% discount with your VISA credit or debit cards',style: TextStyle(fontSize: 20),),
                ),
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/Offer Image (1).png'),
                    
                  ),
                  Column(
                    children: [
                      Text('Use your VISA credit or debit card with any'),
                      Text('with any transaction'),
                     Text('and get 25% discount instantly!'),


                    ],
                  ),
                 // Icon(Icons.arrow_back_ios_new_sharp,)
                ],)
                
              ],
            ),
          )
        ],
      ),
    );
  }
}