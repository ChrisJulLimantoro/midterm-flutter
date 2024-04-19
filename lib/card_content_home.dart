import 'package:flutter/material.dart';

class CardCreatorHome extends StatelessWidget {
  const CardCreatorHome({
    super.key,
    required this.detail,
  });

  final List<Map<String, String>> detail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 18.0, 0.0),
        child: Row(
          children: detail.map((data) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Card(
                color: Colors.white,
                child: SizedBox(
                  width: 180.0,
                  height: 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: SizedBox(
                          height: 130.0,
                          width: 180.0,
                          child: Image.asset(
                            data['image'] ?? 'assets/images/food1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 6.0),
                        child: Text(
                          data['name'] ?? 'Thai Mee Laksa',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.8,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          data['address'] ?? '122 Queen Street',
                          style: const TextStyle(
                            fontSize: 12,
                            letterSpacing: -0.3,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 1.0),
                        child: Text(
                          data['type'] ?? 'Fried Chicken, American',
                          style: const TextStyle(
                            fontSize: 10,
                            letterSpacing: -0.2,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
