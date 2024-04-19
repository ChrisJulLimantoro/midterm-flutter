import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.back});

  final String title;
  final bool back;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.amber,
          size: 35.0,
          semanticLabel: 'Back',
        ),
        onPressed: () {
          if (back) Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
