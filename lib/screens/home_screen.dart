import 'package:fl_movies/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peliculas en cines"),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              print("Search button pressed");
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            // Main cards
            CardSwiper(),
            // Movies list
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}
