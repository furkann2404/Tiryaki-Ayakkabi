import 'package:flutter/material.dart';
import 'package:vize/ayakkabi.dart';
import 'package:vize/main.dart';

class satinal extends StatefulWidget {
  @override
  _satinalState createState() => _satinalState();
}

class _satinalState extends State<satinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mobil Programlama')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Satın AL'),
            ElevatedButton(
              child: Text("Sepete Ekle",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ayakkabi()));
              },
            ),
            Text(''),
            ElevatedButton(
              child: Text("Ayakkabılara geri Dön",style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ayakkabi()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
