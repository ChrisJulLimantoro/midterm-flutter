import 'package:flutter/material.dart';
import 'package:uts_ambw/custom_bottom_navbar.dart';
import 'package:uts_ambw/custom_app_bar.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({
    super.key,
    required this.title,
    required this.icon,
    required this.index,
  });

  final String title;
  final IconData icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: CustomAppBar(
          title: title,
          back: true,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: Icon(
                  icon,
                  size: 100,
                  color: Colors.grey.shade700,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'More Page still under maintenance...',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex: index,
      ),
    );
  }
}
