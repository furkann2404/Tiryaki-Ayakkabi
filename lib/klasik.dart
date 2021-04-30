import 'package:flutter/material.dart';
import 'package:vize/satinal.dart';

class klasik extends StatefulWidget {
  @override
  _klasikState createState() => _klasikState();
}

class _klasikState extends State<klasik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
        title:Text('Tiryaki Ayakkabı')),
      body: Center(child: Column(children: <Widget>[

        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Cinsiyetinizi Girisinz',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Ayakkabı Numaranızı Giriniz:',
          ),

        ),
        Text(''),
        ElevatedButton(
          child: Text("Satın Almaya Gidiniz",style: TextStyle(fontSize: 20),),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => satinal()));
          },
        ),


      ],
      ),),

    );

  }
}
