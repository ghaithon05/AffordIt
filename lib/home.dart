import 'package:affordit/widget.dart';
import 'package:flutter/material.dart';
import 'budget.dart';
import 'widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Budget budget = Budget();
  double _income = 0, _bills = 0, _savings = 0;

  void updateIncome(String text) {
    _income = parseNumber(text);
  }

  void updateBills(String text) {
    _bills = parseNumber(text);
  }

  void updateSavings(String text) {
    _savings = parseNumber(text);
  }

  void calculate() {
    setState(() {
      budget.income = _income;
      budget.bills = _bills;
      budget.monthlySavings = _savings;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AffordIt'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            MyTextField(f: updateIncome, hint: 'Monthly income'),
            const SizedBox(height: 20.0),
            MyTextField(f: updateBills, hint: 'Rent and bills'),
            const SizedBox(height: 20.0),
            MyTextField(f: updateSavings, hint: 'Savings per month'),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                calculate();
              },
              child: const Text('Calculate', style: TextStyle(fontSize: 24.0)),
            ),
            const SizedBox(height: 20.0),
            Text('$budget'),
          ],
        ),
      ),
    );
  }
}