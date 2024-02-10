import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/popular_studies_card.dart'; // Adjust the import path as needed
import '../models/article_list_tile.dart'; // Adjust the import path as needed
import '../models/article_data.dart'; // Adjust the import path as needed
import '../widgets/app_drawer.dart'; // Ensure this is the correct path to your AppDrawer widget
import '../models/article.dart'; // Import the Article model

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "MoodCanvas",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),
      drawer: AppDrawer(), // Add the AppDrawer here
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Popular Studies",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CarouselSlider.builder(
                  itemCount: ArticleData.breakingNewsData.length,
                  itemBuilder: (context, index, id) =>
                      PopStudiesCard(ArticleData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                  )),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Other News",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Column(
                children: ArticleData.recentNewsData
                    .map((e) => ArticleTile(e))
                    .toList(),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
