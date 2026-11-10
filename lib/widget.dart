import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final Function(String) f;
  final String hint;

  const MyTextField({required this.hint, required this.f, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 50.0,
      child: TextField(
        style: const TextStyle(fontSize: 18.0),
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
        ],
        decoration: InputDecoration(
            border: const OutlineInputBorder(), hintText: hint),
        onChanged: (text) {
          f(text);
        },
      ),
    );
  }
}

double parseNumber(String text) {
  return double.tryParse(text.trim()) ?? 0;
}