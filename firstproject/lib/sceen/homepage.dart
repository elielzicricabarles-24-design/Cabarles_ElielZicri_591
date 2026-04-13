import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? title;

  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = "Welcome to the Home Paige!";
    num1.text = "";
    num2.text = "";
    super.initState();
  }

  void handleAddition() {
    setState(() {
      total = double.parse(num1.text) + double.parse(num2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text(title!)),
          SizedBox(height: 15),
          TextField(
            controller: num1,
            decoration: InputDecoration(
              labelText: 'Input your first number',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
              labelText: 'Input your second number',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          Center(child: Text("$total", style: TextStyle(fontSize: 20))),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              handleAddition();
            },
            child: Text("Addition!"),
          ),
        ],
      ),
    );
  }
}
