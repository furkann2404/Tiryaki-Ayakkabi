import 'package:flutter/material.dart';
import 'package:vize/bot.dart';
import 'package:vize/klasik.dart';
import 'package:vize/sandalet.dart';
import 'package:vize/spor.dart';

class ayakkabi extends StatefulWidget {
  @override
  _ayakkabiState createState() => _ayakkabiState();
}

class _ayakkabiState extends State<ayakkabi> {
  @override
  Widget build(BuildContext context) {
    padding:
    return Scaffold(appBar: AppBar(
        title: Text('Tiryaki Ayakkabı')),
        body: Center( child: Column(
          children: <Widget>[
            Text(''),
            ElevatedButton(
              child: Text("Dosya Okuma ve Kaydetme",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => spor()));
              },
            ),
            Text(''),
            ElevatedButton(
              child: Text("API ÖRNEK",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => klasik()));
              },
            ),
            Text(''),
            ElevatedButton(
              child: Text("Gestures Örnek",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => bot()));
              },
            ),
            Text(''),
            ElevatedButton(
              child: Text("fl_chart Örnek",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => sandalet()));
              },
            ),
          ],
        ))

    );
  }

}