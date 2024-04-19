import 'package:flutter/material.dart';
import 'package:uts_ambw/custom_app_bar.dart';
import 'card_content_home.dart';
import 'title_content_home.dart';
import 'custom_bottom_navbar.dart';
import 'custom_sliver_app_bar.dart';
// Import the CustomSliverAppBar widget

class HomePage extends StatelessWidget {
  final String title;
  final List<Map<String, String>> detail;
  final List<Map<String, String>> detail2;

  const HomePage({
    Key? key,
    required this.title,
    required this.detail,
    required this.detail2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(title: title, back: false),
      ),
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(title: title, search: true, back: false),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      height: 240,
                      width: MediaQuery.of(context).size.width,
                      child: const Image(
                        image: AssetImage('assets/images/food1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.bottomCenter,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                          ],
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Thai Style',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -1.0,
                                  ),
                                ),
                                Text(
                                  '12 places',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 10,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.circle,
                                  color: Colors.white70,
                                  size: 10,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.circle,
                                  color: Colors.white70,
                                  size: 10,
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.circle,
                                  color: Colors.white70,
                                  size: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                TitleContentHome(titleContent: 'Most Popular', detail: detail),
                CardCreatorHome(detail: detail),
                TitleContentHome(titleContent: 'Meal Deals', detail: detail2),
                CardCreatorHome(detail: detail2),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavbar(
        currentIndex: 0,
      ),
    );
  }
}
