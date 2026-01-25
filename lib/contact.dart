import 'package:flutter/material.dart';
import 'thankyou_screen.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  bool isFormValid = false;

  void validateForm(){
    setState(() {
      isFormValid = nameController.text.isNotEmpty && emailController.text.isNotEmpty && messageController.text.isNotEmpty;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Here")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Get in Touch",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Your Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => validateForm(),
            ),
            const SizedBox(height: 15),
            TextField(
              controller : emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Enter your email",
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => validateForm(),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: messageController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: "Message",
                border: OutlineInputBorder(),
              ),
              onChanged: (_) => validateForm(),
            ),
            const SizedBox(height: 25),

            Center(
              child: ElevatedButton(
                onPressed: isFormValid ? () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankyouScreen(),
                    ),
                  );
                } : null ,
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  