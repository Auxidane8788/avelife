import 'package:flutter/material.dart';

class LabTestScreen extends StatelessWidget {
  const LabTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab Tests'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Available Lab Tests:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    title: Text('Blood Test'),
                    subtitle: Text('A general health check-up'),
                  ),
                  ListTile(
                    title: Text('Urine Test'),
                    subtitle: Text('Analyzes various substances in urine'),
                  ),
                  ListTile(
                    title: Text('Lipid Profile'),
                    subtitle: Text('Checks cholesterol levels'),
                  ),
                  ListTile(
                    title: Text('Thyroid Test'),
                    subtitle: Text('Evaluates thyroid function'),
                  ),
                  ListTile(
                    title: Text('Diabetes Test'),
                    subtitle: Text('Measures blood sugar levels'),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add navigation logic or action for booking a lab test
                // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => BookingScreen()));
              },
              child: const Text('Book a Lab Test'),
            ),
          ],
        ),
      ),
    );
  }
}
