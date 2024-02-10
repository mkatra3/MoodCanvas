//while the app is building let's create the NewsData class

class ArticleData {
  String title;
  String author;
  String content;
  String urlToImage;
  String date;

  //let's create the constructor
  ArticleData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
  );

  //we will use dummy data to generate the news,but you can use a third party api or your own backend to extract the data
  //I will copy the data from my previous code, you can create your own data , I used newsApi to get the data
  static List<ArticleData> breakingNewsData = [
    ArticleData(
       "The Science of Habits | Psychology Today",
       "Psychology Today",
       "Understanding the science behind habit formation reveals that habits are easier to create or change than commonly thought...",
       "2023-01-01",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
       "The Science of Habit: How to Rewire Your Brain",
       "Unknown",
       "Despite 44% of Americans making New Year's resolutions, nearly half fail due to the lack of practicing...",
       "2023-01-02",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
       "The Neuroscience of Habits: How They Form and How to Change Them [Excerpt] | Scientific American",
       "Scientific American",
       "Charles Duhigg's book \"The Power of Habit\" delves into neuroscience and psychology to explore how habits form...",
       "2023-01-03",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
      "Habit Tracking: Definition, Examples, & Tips - The Berkeley Well-Being Institute",
      "The Berkeley Well-Being Institute",
       "Habit tracking is a powerful tool for change, enabling individuals to monitor and modify their behaviors over time...",
       "2023-01-04",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
       "5 Powerful Health Benefits of Journaling",
       "Unknown",
       "Journaling, once considered old-fashioned, is now recognized as a beneficial practice for overall health...",
       "2023-01-05",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
       "Dreaming Up a Good Mood | Psychology Today",
       "Psychology Today",
       "Two studies suggest that dreams play a significant role in regulating mood, with healthy individuals experiencing improved mood after sleep...",
       "2023-01-06",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
    ArticleData(
       "These habits can cut the risk of depression in half, a new study finds.",
       "NPR",
       "NPR article about how maintaining daily habits can reduce depression and other negative emotions...",
       "2023-01-07",
       "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),];

  static List<ArticleData> recentNewsData = [
    ArticleData(
      "Monitoring your mood - Better Health Channel",
      "Better Health Channel",
      "Article about monitoring moods, what causes them, and how to enforce tactics to deal with mood swings...",
      "2023-01-08",
      "",
    ),

    ArticleData(
      "How to Use a Mood Tracker",
      "Unknown",
      "This article describes how to use a mood tracker and how to make the most use out of it. It also talks about how to pick a mood tracker that works for you...",
      "2023-01-09",
      "",
    ),

    ArticleData(
      "I’ve Tracked My Mood for Over 1000 Days: A Data Analysis | by Juan De Dios Santos",
      "Unknown",
      "An article from an individual’s personal experience from using a mood tracker and who analyzed his own data and the effect of it on his moods...",
      "2023-01-10",
      "",
    ),

    ArticleData(
      "Mobile apps for mood tracking: an analysis of features and user reviews - PMC",
      "PMC",
      "A research study that describes different mood tracking apps and comparing their performance as well as all of the features of the different applications...",
      "2023-01-11",
      "",
    ),

    ArticleData(
      "Understanding People’s Use of and Perspectives on Mood-Tracking Apps: Interview Study",
      "Unknown",
      "A research interview study that describes the usage and perspectives of people who use mood tracking applications...",
      "2023-01-12",
      "",
    ),

    ArticleData(
      "Mental health ills are rising. Do mood-tracking apps help? — Harvard Gazette",
      "Harvard Gazette",
      "A study on whether mood tracking apps are effective, as the amount of people who are diagnosed with mental health illnesses continues to increase...",
      "2023-01-13",
      "",
    ),

    ArticleData(
      "Foods that can boost your mood",
      "Unknown",
      "Article that lists off healthy foods that can improve your mood...",
      "2023-01-14",
      "",
    ),

    ArticleData(
      "The Best Forms of Exercise to Improve Your Mood",
      "Unknown",
      "Exercise helps improve your mood and puts you in a good mental health. Learn some great exercises you can do to achieve this...",
      "2023-01-15",
      "",
    ),

    ArticleData(
      "How Flowers Can Lift Your Mood | Planteria Group Blog",
      "Planteria Group Blog",
      "Flowers help improve your mood due to various factors such as color and smell. Learn more about these factors...",
      "2023-01-16",
      "",
    ),

    ArticleData(
      "15 Benefits of Journaling and Tips for Getting Started",
      "Unknown",
      "Journaling is a great tool for processing emotions and feelings. Learn more about the benefits...",
      "2023-01-17",
      "",
    ),

    ArticleData(
      "How monitoring your mood can help your mental health",
      "Unknown",
      "A blog post discussing the benefits of mood tracking. The blog lists different types of trackers, including apps, but also discusses as well as patterns, triggers, and communication methods...",
      "2023-01-18",
      "https://www.berkeleywellbeing.com/uploads/1/9/4/8/19481349/habit-tracking_orig.jpg",
    ),
  ];
}
