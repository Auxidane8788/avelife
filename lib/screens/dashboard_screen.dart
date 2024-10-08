import 'package:flutter/material.dart';
import 'bmi_calculator.dart';  // Import BMI Calculator screen
import 'supplements_screen.dart';  // Import Supplements screen
import 'food_delivery_screen.dart';  // Import Food Delivery screen
import 'lab_test_screen.dart';  // Import Lab Test screen
import 'profile_screen.dart';  // Import Profile screen
import 'health_screen.dart';  // Import Health screen

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0; // Track the selected tab

  // List of widgets corresponding to each tab
  static const List<Widget> _widgetOptions = <Widget>[
    HealthScreen(),  // Show Health screen
    BMICalculatorScreen(),  // Show BMI Calculator screen
    SupplementsScreen(),  // Show Supplements screen
    FoodDeliveryScreen(),  // Show Food Delivery screen
    LabTestScreen(),  // Show Lab Test screen
    ProfileScreen(),  // Show Profile screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa),
            label: 'Supplements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service),
            label: 'Lab',
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
