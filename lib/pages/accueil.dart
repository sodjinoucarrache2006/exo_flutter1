import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Accueil());
}

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final SnackBar _snackBar = SnackBar(
    content: Text("Ceci est un snackbar"),
    backgroundColor: Colors.red,
    duration: Duration(seconds: 4),
    action: SnackBarAction(label: 'Clic', onPressed: () {}),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Center(child: Text("Bienvenu!")),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar);
                },
                child: Text("ElevetedtButton"),
              ),
              OutlinedButton(
                
                onPressed: () {
                  final SnackBar snack2 = SnackBar(
                    content: Text("Ceci ets un snavckbar dans outline buton"),
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.black54,
                    action: SnackBarAction(
                      label: 'Clic',
                      textColor: Colors.white,
                     onPressed: () {}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snack2);
                },
                child: Icon(FontAwesomeIcons.house, color: Colors.blueAccent),
              ),
              Ink(
                child: Icon(Icons.abc),
                decoration: BoxDecoration(color: Colors.teal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
