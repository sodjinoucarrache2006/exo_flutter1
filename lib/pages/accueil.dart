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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Container(
          
          child:Column(
        children: [
          Center(
        child: Text("Bienvenu!"),
      ),
      ElevatedButton(onPressed: (){}, child:Text("FlatButton"),
      ),
      OutlinedButton(onPressed: (){}, child:Icon(FontAwesomeIcons.house,
      color: Colors.blueAccent,
      ),
      
      
      ),
      Ink(
        child: Icon(Icons.abc),
        decoration: BoxDecoration(
     
          color: Colors.teal
        ),
      ),
      TextButton(onPressed: (){}, child: Text("Texte button")),
      CupertinoButton(child: Text("Cupertino"), onPressed:(){},
      
    
       )
        ],
      ),
        ),
      )
    );
  }
}
