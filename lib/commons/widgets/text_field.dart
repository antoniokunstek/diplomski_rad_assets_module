import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double fieldWidth;
  final String label;
  final bool isSecret;
  final Icon? icon;
  final TextEditingController textEditingController;


  const AppText({super.key,
    this.fieldWidth = 250,
    required this.label,
    this.isSecret = false,
    this.icon,
    required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fieldWidth,
      child: TextField(
        controller: textEditingController,
        obscureText: isSecret,
        decoration: InputDecoration(
          prefixIcon: icon ?? const Icon(Icons.done),
          border: const OutlineInputBorder(),
          labelText: label
        ),
      ),
    );
  }
}
