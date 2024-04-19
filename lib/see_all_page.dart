// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'card_see_all.dart';
import 'custom_bottom_navbar.dart';
import 'custom_app_bar.dart';
import 'custom_sliver_app_bar.dart';

class SeeAllPage extends StatelessWidget {
  final String title;
  final List<Map<String, String>> detail;

  SeeAllPage({
    Key? key,
    required this.detail,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final title = data['title'];
    final detail = data['detail'];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: CustomAppBar(title: title, back: true),
      ),
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(title: title, search: true, back: false),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                CardSeeAll(detail: detail),
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
