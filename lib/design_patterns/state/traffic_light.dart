import 'package:flutter/material.dart';
import 'dart:async';

abstract class TrafficLightState {
  void next(TrafficLight light);
  Color getColor();
}

class GreenState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = YellowState();
  }

  @override
  Color getColor() {
    return Colors.green;
  }
}

class YellowState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = RedState();
  }

  @override
  Color getColor() {
    return Colors.yellow;
  }
}

class RedState implements TrafficLightState {
  @override
  void next(TrafficLight light) {
    light.currentState = GreenState();
  }

  @override
  Color getColor() {
    return Colors.red;
  }
}

class TrafficLight {
  TrafficLightState currentState = GreenState();

  void next() {
    currentState.next(this);
  }

  Color getColor() {
    return currentState.getColor();
  }
}

class TrafficLightApp extends StatefulWidget {
  const TrafficLightApp({super.key});

  @override
  State<TrafficLightApp> createState() => _TrafficLightAppState();
}

class _TrafficLightAppState extends State<TrafficLightApp> {
  final light = TrafficLight();
  int cycle = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        setState(
          () {
            cycle++;
            light.next();
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Traffic Light Simulation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: light.getColor(),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Cycle: $cycle',
                style: const TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
