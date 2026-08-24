import 'package:flutter/material.dart';

void main() async {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Center(child: Text("Body Text")),
      floatingActionButton: Theme(
        data: ThemeData.light(),
        child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
      ),
    );
  }
}
