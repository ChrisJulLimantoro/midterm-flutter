import 'package:flutter/material.dart';
import 'home_page.dart';
import 'see_all_page.dart';
import 'other_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const List<Map<String, String>> detail = [
    {
      'name': 'Thai Mee Laksa',
      'address': '122 Queen Street',
      'type': 'Fried Chicken, American',
      'image': 'assets/images/food1.jpg',
    },
    {
      'name': 'Pork Belly Ramen',
      'address': '15 King Street',
      'type': 'Ramen, Japanese',
      'image': 'assets/images/food2.jpeg',
    },
    {
      'name': 'Fried Rice',
      'address': '1 Jack Street',
      'type': 'Fried Rice, Chinese',
      'image': 'assets/images/food3.jpeg',
    },
    {
      'name': 'Glazed Doughnut',
      'address': '15 Queen Street',
      'type': 'Doughnut, American',
      'image': 'assets/images/food4.jpeg',
    },
    {
      'name': 'Croissant',
      'address': '52 King Street',
      'type': 'Croissant, French',
      'image': 'assets/images/food5.jpeg',
    },
    {
      'name': 'French Fries',
      'address': '11 Queen Street',
      'type': 'French Fries, American',
      'image': 'assets/images/food6.jpeg',
    },
  ];
  static const List<Map<String, String>> detail2 = [
    {
      'name': 'Pizza Mozarella',
      'address': '115 King Street',
      'type': 'Pizza, American',
      'image': 'assets/images/food7.jpeg',
    },
    {
      'name': 'Ceasar Salad',
      'address': '4 King Street',
      'type': 'Salad, American',
      'image': 'assets/images/food8.jpeg',
    },
    {
      'name': 'Croissant',
      'address': '52 King Street',
      'type': 'Croissant, French',
      'image': 'assets/images/food5.jpeg',
    },
    {
      'name': 'Teriyaki Beef Bowl',
      'address': '15 Jack Street',
      'type': 'Beef Bowl, Japanese',
      'image': 'assets/images/food9.jpeg',
    },
    {
      'name': 'Pork Belly Ramen',
      'address': '15 King Street',
      'type': 'Ramen, Japanese',
      'image': 'assets/images/food2.jpeg',
    },
    {
      'name': 'Gyukatsu Beef',
      'address': '88 Queen Street',
      'type': 'Gyukatsu, Japanese',
      'image': 'assets/images/food10.jpeg',
    },
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white, background: Colors.grey[200]),
        useMaterial3: true,
      ),
      routes: {
        '/detail': ((context) => SeeAllPage(
              title: '',
              detail: [],
            )),
        '/discover': ((context) => const OtherPage(
              icon: Icons.location_on,
              title: 'Discover',
              index: 1,
            )),
        '/bookmark': ((context) => const OtherPage(
              icon: Icons.bookmark,
              title: 'Bookmark',
              index: 2,
            )),
        '/topfoodie': ((context) => const OtherPage(
              icon: Icons.star,
              title: 'Top Foodie',
              index: 3,
            )),
        '/profile': ((context) => const OtherPage(
              icon: Icons.person,
              title: 'Profile',
              index: 4,
            )),
        '/home': ((context) => const HomePage(
            title: 'Sydney CBD', detail: detail, detail2: detail2)),
      },
      debugShowCheckedModeBanner: false,
      home:
          const HomePage(title: 'Sydney CBD', detail: detail, detail2: detail2),
    );
  }
}
