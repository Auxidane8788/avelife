// custom_bottom_sheet.dart

import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.article),
            title: const Text('Health Articles'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              Navigator.pushNamed(context, '/health_articles'); // Replace with your route
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_answer),
            title: const Text('Health Quiz'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              Navigator.pushNamed(context, '/health_quiz'); // Replace with your route
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('FAQs'),
            onTap: () {
              Navigator.pop(context); // Close the bottom sheet
              Navigator.pushNamed(context, '/faqs'); // Replace with your route
            },
          ),
        ],
      ),
    );
  }
}
