import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
    required this.title,
    required this.search,
    required this.back,
  }) : super(key: key);

  final String title;
  final bool search;
  final bool back;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true, // Keeps the app bar visible when scrolling up
      floating: true, // Animates the app bar when scrolling down
      snap: true,
      toolbarHeight: 0,
      expandedHeight: search ? 60.0 : 0.0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      flexibleSpace: search
          ? FlexibleSpaceBar(
              background: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for restaurants...',
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                      height: 1.0,
                      color: Colors.grey,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabled: true,
                  ),
                  style: const TextStyle(
                    fontSize: 18.0,
                    height: 1.0,
                  ),
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
