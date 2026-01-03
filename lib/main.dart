import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const PortfolioScreen() , debugShowCheckedModeBanner: false,);
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("My Portfolio") ,
        centerTitle: true,
      ), 
      body :
      Center(
        child: 
        Column(
          children: [
            CircleAvatar(radius: 100, backgroundImage: AssetImage("assets/riya.jpeg"),),
            SizedBox(height: 20,),
            const Text(
              "Riya Jain",
              style : TextStyle(
                fontSize: 30 , fontWeight: FontWeight.bold
              )
            )
          ],)
      )

    );
  }
}
