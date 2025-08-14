import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pages/accueil.dart';
import 'pages/compte.dart';
import 'pages/statistique.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
      ),
      debugShowCheckedModeBanner: false,
      home: const Myappli(),
    );
  }
}

class Myappli extends StatefulWidget {
  const Myappli({super.key});

  @override
  State<Myappli> createState() => _MyappliState();
}

class _MyappliState extends State<Myappli> {
  Icon _favorit = Icon(Icons.favorite_border, color: Colors.white);
  bool liked = false;

  int pageActuel = 0;

  final List<Widget> mesPages = [Accueil(), Compte(), Statistique()];
  void afficher() {
    setState(() {
      if (liked) {
        _favorit = Icon(Icons.favorite_border, color: Colors.white);
        liked = false;
      } else {
        _favorit = Icon(Icons.favorite, color: Colors.white);
        liked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Like"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[IconButton(onPressed: afficher, icon: _favorit)],
      ),

      body: mesPages[pageActuel],

      floatingActionButton: FloatingActionButton(
        onPressed: afficher,
        child: _favorit,
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.green, width: 1)),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,

          currentIndex: pageActuel,
          onTap: (index) {
            setState(() {
              pageActuel = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: pageActuel == 0
                      ? Colors.green.withOpacity(0.2)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.home),
              ),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: pageActuel == 1
                      ? Colors.green.withOpacity(0.2)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.supervised_user_circle),
              ),
              label: 'Mon Compte',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: pageActuel == 2
                      ? Colors.green.withOpacity(0.2)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.assessment),
              ),
              label: 'Statistiques',
            ),
          ],
        ),
      ),

      drawer: Drawer(
        child: ListView(
         children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Center(
            child: Text("Menu de navigation",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            ),
          )),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accuel'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text('Mon Compte'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.assessment),
            title: Text('Statistiques'),
          )
         ],
        ),
      ),
    );
  }
}
