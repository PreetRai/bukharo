import 'package:flutter/material.dart';
import 'package:localstore/localstore.dart';
import '../Widget/textform.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController teamAName = TextEditingController();

  TextEditingController teamBName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InputFb2(
                    inputController: teamAName, text: 'Team A', hint: 'Sonic'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InputFb2(
                    inputController: teamBName,
                    text: 'Team B',
                    hint: 'Ultimates'),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      final db = Localstore.instance; // gets new id
                      final id = db.collection('Teams').doc().id;
                      db
                          .collection('Teams')
                          .doc('Team A')
                          .set({'name': teamAName.text});
                      db
                          .collection('Teams')
                          .doc('Team B')
                          .set({'name': teamBName.text});

                      Navigator.pushNamed(context, '/Scores');
                    },
                    child: const Text('Next'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
