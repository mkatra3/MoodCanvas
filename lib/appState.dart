import 'package:flutter/material.dart';
import 'package:moodcanvas/models/article.dart';
import 'package:moodcanvas/models/journal.dart';
import 'package:provider/provider.dart';

class AppData extends ChangeNotifier {
  Map<DateTime, Journal> AllJournals; 
  List<Article> resourses ; 
}
