import 'package:flutter/material.dart';
import 'package:vize/views/albums_view.dart';
import 'package:vize/views/sozluk_view.dart';

class klasik extends StatefulWidget {
  @override
  _klasikState createState() => _klasikState();
}

class _klasikState extends State<klasik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API ve ListView Örneği',
      home: SozlukView(),
    );
  }
}

