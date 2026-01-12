import 'package:flutter/material.dart';

class ThankyouScreen extends StatelessWidget {
  const ThankyouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Thank You")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.check_circle, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            Text(
              "Message Sent Successfully",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
