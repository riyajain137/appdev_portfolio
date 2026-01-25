import 'package:flutter/material.dart';
import 'project_detail_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Projects")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProjectCard(
            title: "Portfolio App",
            subtitle: "Personal Portfolio App built using Flutter",
            icon: Icons.person,
          ),
          ProjectCard(
            title: "Weather App",
            subtitle: "Live weather app built using API",
            icon: Icons.cloud,
          ),
          ProjectCard(
            title: "Todo app",
            subtitle: "Task Management Application",
            icon: Icons.check_circle,
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ProjectCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => ProjectDetailScreen(
                    title: widget.title,
                    subtitle: widget.subtitle,
                    icon: widget.icon,
                  ),
            ),
          );
        },
        leading: Icon(widget.icon, size: 40, color: Colors.blue),
        title: Text(widget.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(widget.subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            IconButton(
              icon: Icon(
                isLiked ? Icons.star : Icons.star_outline,
                color: Colors.amber,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
