import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emploie extends StatelessWidget{
  final String nom;
  final String email;
  final String numero;
  final String photo;
  const Emploie ({super.key,required this.nom,required this.email,required this.numero,required this.photo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child : Row(
        children: [
          Container(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
               child: Image.asset("assets/images/$photo")

            ),
      ), Expanded(
              child: ListTile(
                title: Text("$nom"),
                subtitle: Text("$email"),
                trailing: Text("$numero"),
              ),
            )

        ],      )
    );
  }

}