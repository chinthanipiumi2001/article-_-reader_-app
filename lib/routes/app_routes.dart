import 'package:flutter/material.dart';
import 'package:article_reader_app/presentation/splash_screen/splash_screen.dart';
import 'package:article_reader_app/presentation/login_screen/login_screen.dart';
import 'package:article_reader_app/presentation/register_screen/register_screen.dart';
import 'package:article_reader_app/presentation/main_container_screen/main_container_screen.dart';
import 'package:article_reader_app/presentation/political_articles_screen/political_articles_screen.dart';
import 'package:article_reader_app/presentation/foreign_articles_screen/foreign_articles_screen.dart';
import 'package:article_reader_app/presentation/sports_articles_screen/sports_articles_screen.dart';
import 'package:article_reader_app/presentation/education_articles_screen/education_articles_screen.dart';
import 'package:article_reader_app/presentation/academic_articles_screen/academic_articles_screen.dart';
import 'package:article_reader_app/presentation/research_articles_screen/research_articles_screen.dart';
import 'package:article_reader_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String mainPage = '/main_page';

  static const String mainContainerScreen = '/main_container_screen';

  static const String politicalArticlesScreen = '/political_articles_screen';

  static const String foreignArticlesScreen = '/foreign_articles_screen';

  static const String sportsArticlesScreen = '/sports_articles_screen';

  static const String educationArticlesScreen = '/education_articles_screen';

  static const String academicArticlesScreen = '/academic_articles_screen';

  static const String researchArticlesScreen = '/research_articles_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    mainContainerScreen: (context) => MainContainerScreen(),
    politicalArticlesScreen: (context) => PoliticalArticlesScreen(),
    foreignArticlesScreen: (context) => ForeignArticlesScreen(),
    sportsArticlesScreen: (context) => SportsArticlesScreen(),
    educationArticlesScreen: (context) => EducationArticlesScreen(),
    academicArticlesScreen: (context) => AcademicArticlesScreen(),
    researchArticlesScreen: (context) => ResearchArticlesScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
