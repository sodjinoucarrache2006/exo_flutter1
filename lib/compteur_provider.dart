import 'package:flutter/material.dart';

class CompteurProvider with ChangeNotifier {
  int compteur;

  CompteurProvider(this.compteur);
  int get compter => compteur;

  set compter(int valeur) {
    compteur = valeur;
  }

  void increment() {
    compteur++;
    notifyListeners();
  }
}
