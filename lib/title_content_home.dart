import 'package:flutter/material.dart';

class TitleContentHome extends StatelessWidget {
  const TitleContentHome({
    super.key,
    required this.titleContent,
    required this.detail,
  });
  final String titleContent;
  final List<Map<String, String>> detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            titleContent,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              letterSpacing: -1.5,
            ),
          ),
          TextButton(
            child: const Text(
              'See all',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 12, 191, 204),
                letterSpacing: -1.2,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/detail',
                arguments: {
                  'title': titleContent,
                  'detail': detail,
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
