import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ProjectDetailScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(subtitle, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
