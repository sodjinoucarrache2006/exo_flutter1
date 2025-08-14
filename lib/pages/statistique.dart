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
    if (_index < Stepps.length - 1) {
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

  String _choix = 'Aucun';

  void _choixSimple(String choix) {
    setState(() {
      _choix = choix;
    });
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
            ),

            ElevatedButton(
              onPressed: () {
                SnackBar _snap = SnackBar(
                  content: Text("Ceci est est mon second snacbar"),
                  duration: Duration(seconds: 4),
                  backgroundColor: Colors.black26,
                  action: SnackBarAction(label: "Clic", onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(_snap);
              },
              child: Text("SnackBar"),
            ),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("AlerteButton"),
                      content: Text("Ceci est une alertDialoqge"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Close"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text("AlertDialog"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Text("SimpleDialogue"),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),

            Text("Voici le choix fait avec le SimpleDialogue: "),
            Padding(padding: EdgeInsets.only(bottom: 15)),
            Text(
              "$_choix",
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
