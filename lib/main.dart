import 'package:flutter/material.dart';
import 'routes/home/home.dart';
import 'routes/calendar/calendar.dart';
import 'routes/add_exercise/add_exercise.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return const MyHomePage(title: 'Jacked and Stacked');
        },
        '/about': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('About Route'),
            ),
          );
        },
        '/play': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Play Route'),
            ),
          );
        },
        '/calendar': (context) => const CalendarRoute(title: 'Calendar'),
        '/addExercise': (context) => const AddExerciseRoute(title: 'Add Exercise'),
      },
      debugShowCheckedModeBanner: false,
      title: 'Jacked and Stacked',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
