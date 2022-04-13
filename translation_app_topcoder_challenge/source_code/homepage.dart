import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? translated;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English-Indonesian Translation'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Source text:',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              TextField(
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                  onChanged: (text) async {
                    if (text.isNotEmpty) {
                      final translation =
                          await text.translate(from: 'en', to: 'id');
                      setState(() {
                        translated = translation.text;
                      });
                    } else {
                      setState(() {
                        translated = 'Enter text';
                      });
                    }
                  }),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Text('Translated:',
                  style: TextStyle(fontSize: 20, color: Colors.blue)),
              SizedBox(height: MediaQuery.of(context).size.height / 25),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text((translated == null) ? 'Enter text' : translated!,
                    style: TextStyle(fontSize: 16, color: Colors.black45)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
