import 'package:first_app/contact.dart';
import 'package:flutter/material.dart';
import 'package:first_app/project_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PortfolioScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/riya.jpeg"),
              ),
              SizedBox(height: 20),
              const Text(
                "Riya Jain",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              const Text(
                "CSEAI Student | Flutter Developer",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 20),
              const Divider(),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Skills",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              SkillCard(
                icon: Icons.phone_android,
                title: "Flutter",
                subtitle: "Cross-Platform App Developer",
              ),
              SkillCard(
                icon: Icons.code,
                title: "DSA",
                subtitle: "Problem solving",
              ),
              SkillCard(
                icon: Icons.web,
                title: "Web Development",
                subtitle: "HTML , CSS",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProjectScreen(),
                    ),
                  );
                },
                child: const Text("View Projects"),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(),
                    ),
                  );
                },
                child: const Text("Contact Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  SkillCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
