import 'package:flutter/material.dart';

class AddExerciseRoute extends StatefulWidget {
  const AddExerciseRoute({super.key, required this.title});
  final String title;

  @override
  State<AddExerciseRoute> createState() => _AddExerciseRouteState();
}

class _AddExerciseRouteState extends State<AddExerciseRoute> {
  void onDateChanged(DateTime value) {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.fitness_center),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_month),
            onPressed: () { },
            tooltip: MaterialLocalizations.of(context).calendarModeButtonLabel
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
