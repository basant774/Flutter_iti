import 'package:flutter/material.dart';
import 'package:itinav/views/drawer.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  'FickleFlight',
                  style: TextStyle(
                      fontSize: 40,
                      color: Color(0xFF299BD8),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
                backgroundImage: AssetImage('images/Profile.png'),
              ),
          ),
        ),
        ],
      ),
      
      drawer: Drawer(
        child: EmptyPage()
      ),
    
      body: ListView(
        children: [

          Image.asset('images/Paris card.png'),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Upcoming Flight',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
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
                  ],
                ),
              ),
              SizedBox(
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
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1262AE),
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.flight,
                      color: Colors.white,
                      size: 25,
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
                      'Departs on: 1 May, 08:00 AM',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '4 days',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'to go',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconContainer(Icons.flight, Color(0xFF1262AE)),
                _buildIconContainer(Icons.hotel, Color(0xFFF9668D)),
                _buildIconContainer(Icons.edit, Color(0xFFFF9B53)),
                _buildIconContainer(
                    Icons.food_bank_outlined, Color(0xFF36DA76)),
                _buildIconContainer(Icons.train, Color(0xFFFDBF00)),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Trending Destinations',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildDestinationCard(
                    'images/destination image.png', 'Boracay', 'Philippines'),
                _buildDestinationCard(
                    'images/destination image (1).png', 'Baros', 'Maldives'),
                _buildDestinationCard(
                    'images/destination image (2).png', 'Bali', 'Indonesia'),
                _buildDestinationCard('images/destination image (3).png',
                    'Palawan', 'Philippines'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Offers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Container(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 250),
                      child: Image.asset('images/Offer Image.png', height: 50,),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '20% discount for mastercard users',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Text('Limited time offer!', style: TextStyle(color: Colors.grey, fontSize: 10),)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 250),
                      child: Image.asset('images/Offer Image (1).png', height: 50,),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '25% discount with your Visa credit cards',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                        Text('Limited time offer!', style: TextStyle(color: Colors.grey, fontSize: 10),)
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDestinationCard(String imagePath, String title, String subtitle) {
    return Container(
      width: 250,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              height: 150,
              width: double.infinity,
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(16),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconContainer(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
