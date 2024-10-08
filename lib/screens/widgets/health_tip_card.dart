import 'package:flutter/material.dart';

class HealthTipCard extends StatelessWidget {
  final String tip;

  const HealthTipCard({Key? key, required this.tip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          tip,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
