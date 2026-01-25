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

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text("My Portfolio"),
        centerTitle: true,
        backgroundColor: isDarkMode ? Colors.grey : Colors.blue,
        actions: [
          IconButton(
            icon: Icon(
              isDarkMode ? Icons.dark_mode : Icons.light_mode,
              color: Colors.white,
            ),
            onPressed:
                () => {
                  setState(() {
                    isDarkMode = !isDarkMode;
                  }),
                },
          ),
        ],
      ),
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

              Text(
                "CSEAI Student | Flutter Developer",
                style: TextStyle(
                  fontSize: 16,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
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
                isDarkMode: isDarkMode,
              ),
              SkillCard(
                icon: Icons.code,
                title: "DSA",
                subtitle: "Problem solving",
                isDarkMode: isDarkMode,
              ),
              SkillCard(
                icon: Icons.web,
                title: "Web Development",
                subtitle: "HTML , CSS",
                isDarkMode: isDarkMode,
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
  final bool isDarkMode;

  SkillCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isDarkMode
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color : isDarkMode ? Colors.grey : Colors.white,
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
                  style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color : isDarkMode ? Colors.white : Colors.black
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color : isDarkMode ? Colors.white70 : Colors.black87,
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
