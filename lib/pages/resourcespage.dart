import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../models/article.dart'; // Import the Article model

class ResourcesPage extends StatelessWidget {
  final List<Article> articles = [
    Article(
      title: 'Understanding Mental Health',
      description: 'A comprehensive guide to understanding mental health and wellbeing.',
      imageUrl: 'https://example.com/image1.jpg',
    ),
    Article(
      title: 'Coping with Anxiety',
      description: 'Practical tips and advice for managing anxiety in daily life.',
      imageUrl: 'https://example.com/image2.jpg',
    ),
    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resources'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ListTile(
            leading: Image.network(article.imageUrl, width: 100, fit: BoxFit.cover),
            title: Text(article.title),
            subtitle: Text(article.description),
            onTap: () {
              // Handle article tap, possibly navigate to article details
            },
          );
        },
      ),
    );
  }
}
