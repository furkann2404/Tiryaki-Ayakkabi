import 'package:flutter/material.dart';
import 'package:vize/ayakkabi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tiryaki Ayakkabı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
        title:Text('Tiryaki Ayakkabı')),
      body: Center(child: Column(children: <Widget>[
        Text('Hoşgeldiniz!'),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Kullanıcı Adı',
          ),
        ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Şifre',
          ),

        ),
      ElevatedButton(
        child: Text("Giriş"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ayakkabi()));
        },
      ),
        Text('Şifreyi Unuttmum'),
      ],
      ),),

    );
  }
}

