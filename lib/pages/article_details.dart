import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '/models/article_data.dart'; // Ensure this path matches your project structure

class ArticleDetailsScreen extends StatefulWidget {
  final ArticleData data; // Assuming ArticleData is correctly defined with the necessary fields

  const ArticleDetailsScreen(this.data, {Key? key}) : super(key: key);

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Details'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
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
            const SizedBox(height: 8.0),
            Text(
              widget.data.author,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () async {
                final url = widget.data.URL;
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  print('Could not launch $url');
                }
              },
              child: Hero(
                tag: widget.data.title,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(widget.data.urlToImage),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            Text(widget.data.content),
          ],
        ),
      ),
    );
  }
}
