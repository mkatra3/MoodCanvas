import 'package:flutter/material.dart';
import '/models/article_data.dart'; // Ensure this path matches your project structure

class ArticleDetailsScreen extends StatefulWidget {
  final ArticleData data; // Assuming ArticleData is correctly defined with the necessary fields

  ArticleDetailsScreen(this.data, {Key? key}) : super(key: key);

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Adding an AppBar
        title: Text('Article Details'), // You can customize this title
        backgroundColor: Colors.transparent, // Makes AppBar background transparent
        elevation: 0, // Removes shadow
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Customizes back button color
          onPressed: () => Navigator.of(context).pop(), // Navigates back to previous screen
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.data.title,
              style: const TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              widget.data.author,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Hero(
              tag: widget.data.title, // Assuming title is unique for each article
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image.network(widget.data.urlToImage),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(widget.data.content)
          ],
        ),
      ),
    );
  }
}
