import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() {
          // ignore: avoid_print
          switch (index) {
            case 0:
              Navigator.popUntil(context, (route) => route.isFirst);
              break;
            case 1:
              Navigator.pushNamed(context, '/discover');
              break;
            case 2:
              Navigator.pushNamed(context, '/bookmark');
              break;
            case 3:
              Navigator.pushNamed(context, '/topfoodie');
              break;
            case 4:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        });
      },
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.amber,
      currentIndex: widget.currentIndex,
      iconSize: 30,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on_outlined),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outlined),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star_border_outlined),
          label: 'Top Foodie',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Profile',
        ),
      ],
    );
  }
}
