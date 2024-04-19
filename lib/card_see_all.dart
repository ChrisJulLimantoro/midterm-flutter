import 'package:flutter/material.dart';

class CardSeeAll extends StatelessWidget {
  const CardSeeAll({
    super.key,
    required this.detail,
  });

  final List<Map<String, String>> detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: detail.map((cardDetail) {
        return Card(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  child: SizedBox(
                    height: 150.0,
                    width: double.infinity,
                    child: Image.asset(
                      cardDetail['image'] ?? 'assets/images/food1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            cardDetail['name'] ?? 'Thai mee Laksa',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.8,
                            ),
                          ),
                          Text(
                            cardDetail['address'] ?? '122 Queen Street',
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.4,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        cardDetail['type'] ?? 'Fried Chicken, American',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
