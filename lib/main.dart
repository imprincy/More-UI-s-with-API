import 'package:airtel_app/airtel/airtel_splash.dart';
import 'package:airtel_app/airtel/home_screen.dart';
import 'package:airtel_app/api/api_call.dart';
import 'package:airtel_app/counter_app.dart';
import 'package:airtel_app/movie_api/movies_test.dart';
import 'package:airtel_app/movie_api/about_movie.dart';
import 'package:airtel_app/puppy.dart';
import 'package:airtel_app/stack/second_Stack.dart';
import 'package:airtel_app/stack/stack_practice.dart';
import 'package:airtel_app/stack/third_stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: 'splash',
      routes: {
        'splash':(context)=>SplashScreen(),
        'homeScreen':(context)=>HomeScreen(),
        'inter':(context)=>Interface(),
        'movies':(context)=>Movies(),
        'stack':(context)=>Stacking(),
        'stacking':(context)=>StackSecond(),
        'position':(context)=>PositionedStacking(),
        'counter':(context)=>CounterApp(),
        'puppy':(context)=>SizeCounter(),
        'aboutMovie':(context)=>AboutMovie()
      },
    );
  }
}

