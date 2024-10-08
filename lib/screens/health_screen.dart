import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of widgets corresponding to each tab
  final List<Widget> _pages = [
    const HealthScreen(), // Health Screen
    const BMICalculatorScreen(), // BMI Calculator Screen
    const FoodDeliveryScreen(), // Food Delivery Screen
    const SupplementsScreen(), // Supplements Screen
    const LabTestScreen(), // Lab Test Screen
    const ProfileScreen(), // Profile Screen
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

// Placeholder widget for Health Screen
class HealthScreen extends StatelessWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Welcome to the Health Screen!'),
    );
  }
}

// Placeholder widget for BMI Calculator Screen
class BMICalculatorScreen extends StatelessWidget {
  const BMICalculatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('BMI Calculator Screen'),
    );
  }
}

// Placeholder widget for Food Delivery Screen
class FoodDeliveryScreen extends StatelessWidget {
  const FoodDeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Food Delivery Screen'),
    );
  }
}

// Placeholder widget for Supplements Screen
class SupplementsScreen extends StatelessWidget {
  const SupplementsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Supplements Screen'),
    );
  }
}

// Placeholder widget for Lab Test Screen
class LabTestScreen extends StatelessWidget {
  const LabTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lab Test Screen'),
    );
  }
}

// Placeholder widget for Profile Screen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}
