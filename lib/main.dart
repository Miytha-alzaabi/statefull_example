import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        actions: [
          IconButton(onPressed: (){
            count++;
            setState(() {

            });
          },
           icon: Icon(Icons.add)),
           IconButton(onPressed: (){
            count--;
            setState(() {

            });
          },
           icon: Icon(Icons.minimize))
        ],
        ),
        body: Center(
          child: Text(
            "$count",
            style: TextStyle(
              fontSize: 35,
            ),
            ),
        ),
    );
  }
}