import 'package:affordit/budget.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Budget b = Budget(income: 200, bills: 50, monthlySavings: 50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AffordIt'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('$b'),
      ),
    );
  }
}