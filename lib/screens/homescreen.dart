import 'package:flutter/material.dart';
import 'health_screen.dart'; // Import your HealthScreen

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of widgets corresponding to each tab
  final List<Widget> _pages = [
    HealthScreen(), // Health Screen
    Container(color: Colors.white), // BMI Calculator Screen Placeholder
    Container(color: Colors.white), // Food Delivery Screen Placeholder
    Container(color: Colors.white), // Supplements Screen Placeholder
    Container(color: Colors.white), // Lab Test Screen Placeholder
    Container(color: Colors.white), // Profile Screen Placeholder
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'BMI Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delivery_dining),
            label: 'Food Delivery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_pharmacy),
            label: 'Supplements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Lab Test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex, // Highlight the selected tab
        onTap: _onItemTapped, // Handle tab tap
      ),
    );
  }
}
