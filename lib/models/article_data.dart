//while the app is building let's create the NewsData class

class ArticleData {
  String title;
  String author;
  String content;
  String urlToImage;
  String date;
  String URL;

  //let's create the constructor
  ArticleData(
    this.title,
    this.author,
    this.content,
    this.date,
    this.urlToImage,
    this.URL,
  );

  static List<ArticleData> breakingNewsData = [
    ArticleData(
       "The Science of Habits | Psychology Today",
       "Psychology Today",
       "Understanding the science behind habit formation reveals that habits are easier to create or change than commonly thought...",
       "2023-01-01",
       "assets/ResourcePics/The_Science_of_Habits_Psychology_Today.png",
       "https://www.psychologytoday.com/us/blog/brain-wise/201904/the-science-habits",
    ),
    ArticleData(
       "The Science of Habit: How to Rewire Your Brain",
       "Unknown",
       "Despite 44% of Americans making New Year's resolutions, nearly half fail due to the lack of practicing...",
       "2023-01-02",
       "assets/ResourcePics/The_Science_of_Habit_How_to_Rewire_Your_Brain.png",
       "https://www.healthline.com/health/the-science-of-habit",
    ),
    ArticleData(
       "The Neuroscience of Habits: How They Form and How to Change Them [Excerpt] | Scientific American",
       "Scientific American",
       "Charles Duhigg's book \"The Power of Habit\" delves into neuroscience and psychology to explore how habits form...",
       "2023-01-03",
       "assets/ResourcePics/The_Neuroscience_of_Habits_How_They_Form_and_How_to_Change_Them_Excerpt_Scientific_American.jpeg",
       "https://www.scientificamerican.com/article/power-of-habit-excerpt/",
    ),
    ArticleData(
      "Habit Tracking: Definition, Examples, & Tips - The Berkeley Well-Being Institute",
      "The Berkeley Well-Being Institute",
       "Habit tracking is a powerful tool for change, enabling individuals to monitor and modify their behaviors over time...",
       "2023-01-04",
       "assets/ResourcePics/Habit_Tracking_Definition_Examples_Tips_The_Berkeley_Well-Being_Institute.jpeg",
       "https://www.berkeleywellbeing.com/habit-tracking.html",
    ),
    ArticleData(
       "5 Powerful Health Benefits of Journaling",
       "Unknown",
       "Journaling, once considered old-fashioned, is now recognized as a beneficial practice for overall health...",
       "2023-01-05",
       "assets/ResourcePics/5_Powerful_Health_Benefits_of_Journaling.png",
       "https://intermountainhealthcare.org/blogs/5-powerful-health-benefits-of-journaling",
    ),
    ArticleData(
       "Dreaming Up a Good Mood | Psychology Today",
       "Psychology Today",
       "Two studies suggest that dreams play a significant role in regulating mood, with healthy individuals experiencing improved mood after sleep...",
       "2023-01-06",
       "assets/ResourcePics/Dreaming_Up_a_Good_Mood_Psychology_Today.jpeg",
       "https://www.psychologytoday.com/us/articles/199909/dreaming-good-mood",
    ),
    ArticleData(
       "These habits can cut the risk of depression in half, a new study finds.",
       "NPR",
       "NPR article about how maintaining daily habits can reduce depression and other negative emotions...",
       "2023-01-07",
       "assets/ResourcePics/These_habits_can_cut_the_risk_of_depression_in_half_a_new_study_finds..png",
       "https://www.npr.org/sections/health-shots/2023/09/19/1200223456/depression-anxiety-prevention-mental-health-healthy-habits#:~:text=In%20fact%2C%20a%20new%20study,to%20experience%20episodes%20of%20depression",
    ),];

  static List<ArticleData> recentNewsData = [
    ArticleData(
      "Monitoring your mood - Better Health Channel",
      "Better Health Channel",
      "Article about monitoring moods, what causes them, and how to enforce tactics to deal with mood swings...",
      "2023-01-08",
      "assets/ResourcePics/How_monitoring_your_mood_can_help_your_mental_health.png",
      "https://www.betterhealth.vic.gov.au/health/healthyliving/monitoring-your-mood",
    ),

    ArticleData(
      "How to Use a Mood Tracker",
      "Unknown",
      "This article describes how to use a mood tracker and how to make the most use out of it. It also talks about how to pick a mood tracker that works for you...",
      "2023-01-09",
      "assets/ResourcePics/How_to_Use_a_Mood_Tracker.png",
      "https://www.verywellmind.com/what-is-a-mood-tracker-5119337",
    ),

    ArticleData(
      "I’ve Tracked My Mood for Over 1000 Days: A Data Analysis | by Juan De Dios Santos",
      "Unknown",
      "An article from an individual’s personal experience from using a mood tracker and who analyzed his own data and the effect of it on his moods...",
      "2023-01-10",
      "assets/ResourcePics/ Mobile_apps_for_mood_tracking_an_analysis_of_features_and_user_reviews_PMC.jpeg",
      "https://towardsdatascience.com/ive-tracked-my-mood-for-over-1000-days-a-data-analysis-5b0bda76cbf7",
    ),

    ArticleData(
      "Mobile apps for mood tracking: an analysis of features and user reviews - PMC",
      "PMC",
      "A research study that describes different mood tracking apps and comparing their performance as well as all of the features of the different applications...",
      "2023-01-11",
      "assets/ResourcePics/ Mobile_apps_for_mood_tracking_an_analysis_of_features_and_user_reviews_PMC.jpeg",
      "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5977660/",
    ),

    ArticleData(
      "Understanding People’s Use of and Perspectives on Mood-Tracking Apps: Interview Study",
      "Unknown",
      "A research interview study that describes the usage and perspectives of people who use mood tracking applications...",
      "2023-01-12",
      "assets/ResourcePics/Understanding Peoples_Use_of_and_Perspectives_on_Mood_Tracking_Apps_Interview_Study.jpeg",
      "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8387890/",
    ),

    ArticleData(
      "Mental health ills are rising. Do mood-tracking apps help? — Harvard Gazette",
      "Harvard Gazette",
      "A study on whether mood tracking apps are effective, as the amount of people who are diagnosed with mental health illnesses continues to increase...",
      "2023-01-13",
      "assets/ResourcePics/Mental_health_ills_are_rising_Do_mood_tracking_apps_help_Harvard_Gazette.png",
      "https://news.harvard.edu/gazette/story/2023/08/mental-health-ills-are-rising-do-mood-tracking-apps-help/"
    ),

    ArticleData(
      "Foods that can boost your mood",
      "Unknown",
      "Article that lists off healthy foods that can improve your mood...",
      "2023-01-14",
      "assets/ResourcePics/ Foods_that_can_boost_your_mood.png",
      "https://communityhealth.mayoclinic.org/featured-stories/mood-boosting-foods"
    ),

    ArticleData(
      "The Best Forms of Exercise to Improve Your Mood",
      "Unknown",
      "Exercise helps improve your mood and puts you in a good mental health. Learn some great exercises you can do to achieve this...",
      "2023-01-15",
      "assets/ResourcePics/The_Best_Forms_of_Exercise_to_Improve_Your_Mood.png",
      "https://www.verywellmind.com/exercise-and-improving-your-mood-2223781",
    ),

    ArticleData(
      "How Flowers Can Lift Your Mood | Planteria Group Blog",
      "Planteria Group Blog",
      "Flowers help improve your mood due to various factors such as color and smell. Learn more about these factors...",
      "2023-01-16",
      "assets/ResourcePics/How_Flowers_Can_Lift_Your_Mood_Planteria_Group_Blog.png",
      "https://www.planteriagroup.com/blog/flowers-can-lift-mood/#:~:text=Having%20the%20right%20colour%20flower,can%20reflect%20feelings%20of%20peace",
    ),

    ArticleData(
      "15 Benefits of Journaling and Tips for Getting Started",
      "Unknown",
      "Journaling is a great tool for processing emotions and feelings. Learn more about the benefits...",
      "2023-01-17",
      "assets/ResourcePics/15_Benefits_of_Journaling_and_Tips_for_Getting_Started.png",
      "https://www.healthline.com/health/benefits-of-journaling",
    ),

    ArticleData(
      "How monitoring your mood can help your mental health",
      "Unknown",
      "A blog post discussing the benefits of mood tracking. The blog lists different types of trackers, including apps, but also discusses as well as patterns, triggers, and communication methods...",
      "2023-01-18",
      "assets/ResourcePics/How_monitoring_your_mood_can_help_your_mental_health.png",
      "https://www.calm.com/blog/mood-monitoring",
    ),
  ];
}
