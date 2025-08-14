import 'package:flutter/material.dart';

void main() {
  runApp(Statistique());
}

class Statistique extends StatelessWidget {
  const Statistique({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyStatistique(),
    );
  }
}

class MyStatistique extends StatefulWidget {
  const MyStatistique({super.key});

  @override
  State<MyStatistique> createState() => _MyStatistiqueState();
}

class _MyStatistiqueState extends State<MyStatistique> {
  List<Step> Stepps = [
    Step(
      title: Text("Niveau1"),
      content: Text(
        "Debeloppement mobile niveau debuttan explorer le monde du developpement web",
      ),
    ),
    Step(
      title: Text("Niveau2"),
      content: Text(
        "Developpement mobile niveau intermediaire Approfondir vos connaissance dans le monde de web",
      ),
    ),
    Step(
      title: Text("Niveau"),
      content: Text(
        "Developpement mobile niveau avancée Apprener les notions avnacer dans le monde de web",
      ),
    ),
  ];

  int _index = 0;
  void _increment() {
    if (_index < Stepps.length-1) {
      setState(() {
        _index++;
      });
    }
  }

  void _decrement() {
    if (_index > 0) {
      setState(() {
        _index--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Stepper", style: Theme.of(context).textTheme.displayLarge),

            Stepper(
              steps: Stepps,
              onStepContinue: _increment,
              onStepCancel: _decrement,
              currentStep: _index,
            )
          ],
        ),
      ),
    );
  }
}
