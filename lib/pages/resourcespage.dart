import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../models/article.dart'; // Import the Article model

class ResourcesPage extends StatelessWidget {
  // final List<article> articles = [
  //   article(
  //     title: 'Understanding Mental Health',
  //     description: 'A comprehensive guide to understanding mental health and wellbeing.',
  //     imageUrl: 'https://example.com/image1.jpg',
  //   ),
  //   article(
  //     title: 'Coping with Anxiety',
  //     description: 'Practical tips and advice for managing anxiety in daily life.',
  //     imageUrl: 'https://example.com/image2.jpg',
  //   ),
  //   // Add more articles as needed
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: article.newArticle.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(article.newArticle[index].imageUrl),
            ),
            title: Text(article.newArticle[index].title),
            subtitle: Text(article.newArticle[index].content),
            onTap: () {
              // Add navigation to the article page here
            },
          );
        },
      )
    );
  }
}
