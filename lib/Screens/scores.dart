import 'package:flutter/material.dart';

class Scores extends StatefulWidget {
  final String title;
  const Scores({Key? key, required this.title}) : super(key: key);

  @override
  State<Scores> createState() => _ScoresState();
}

class _ScoresState extends State<Scores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Flex(
          direction: Axis.vertical,
          children: [
            const SizedBox(
              height: 10,
            ),
            Flex(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              direction: Axis.horizontal,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Flex(direction: Axis.vertical, children: const [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Team A',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                        ),
                        Text(
                          '2000 ',
                          style: TextStyle(fontSize: 24),
                        )
                      ]),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Flex(direction: Axis.vertical, children: const [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Team B',
                            style:
                                TextStyle(fontSize: 24, color: Colors.black54),
                          ),
                        ),
                        Text(
                          '2000',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('1st Bukharoo: '),
                  ),
                ),
                Flexible(
                    child: Flex(
                  direction: Axis.horizontal,
                  children: const [],
                ))
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Flexible(child: Text('2nd Bukharoo: ')),
                )
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Flexible(child: Text('3rd Bukharoo: ')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
