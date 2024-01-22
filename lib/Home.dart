import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Emploie.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar (
        title: Text("appel wedget"),
      ),
          body: Container(
         padding: EdgeInsets.all(15.0),
         child: Column(
           children: [
            Emploie(nom: ("oussma"), email: "oussma@gmail.com", numero: "53-106229", photo: ('bb.jpg')),
             Emploie(nom: ("intisar"), email: "intisar@gmail.com", numero: "53-106229", photo: ('aa.jpg')),
           ],
         ),
    ),

    );
  }
  }


