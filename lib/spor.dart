import 'package:flutter/material.dart';
import 'file_utils.dart';

class spor extends StatefulWidget {
  spor() : super();
  final String title = "File Operations";

  @override
  sporState createState() => sporState();
}

class sporState extends State<spor> {
  String fileContents = "Veri Yok";
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
            ),
          ),
          ElevatedButton(
            child: Text("Dosyaya Kaydet"),
            onPressed: () {
              FileUtils.saveToFile(myController.text);
            },
          ),
          ElevatedButton(
            child: Text("Dosyadan Oku"),
            onPressed: () {
              FileUtils.readFromFile().then((contents) {
                setState(() {
                  fileContents = contents;
                });
              });
            },
          ),
          Text(fileContents),
          Text(''),
          Text('Deneme'),
          Image(image: AssetImage('assets/images/logo1.jpg')),
        ],
      ),
    );
  }
}