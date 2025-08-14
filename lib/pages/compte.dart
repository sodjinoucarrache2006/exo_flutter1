import 'package:flutter/material.dart';

void main() {
  runApp(Compte());
}

class Compte extends StatelessWidget {
  const Compte({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCompte());
  }
}

class MyCompte extends StatefulWidget {
  const MyCompte({super.key});

  @override
  State<MyCompte> createState() => _MyHComptetate();
}

class _MyHComptetate extends State<MyCompte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("Mon compte"),
              Image.asset("assets/images/menu1.jpeg"),
              Text(
                "Ceci me est un style adapter aus textes Ceci me est un style adapter aus textes  Ceci me est un style adapter aus textes  ",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
              ),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Retour"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
