

class article {
  final String title;
  final String content;
  final String URL;
  final String imageUrl;

  article({
    required this.title,
    required this.content,
    required this.URL,
    required this.imageUrl,
  });


  static List<article> get newArticle =>
      [

        article(
          title: 'Understanding Mental Health',
          content: 'A comprehensive guide to understanding mental health and wellbeing.',
          URL: 'https://example.com/image1.jpg',
          imageUrl: 'https://example.com/image1.jpg',
        ),
        article(
          title: 'Coping with Anxiety',
          content: 'Practical tips and advice for managing anxiety in daily life.',
          URL: 'https://example.com/image2.jpg',
          imageUrl: 'https://example.com/image2.jpg',
        ),


      ];

}