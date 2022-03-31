import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      // theme: _appTheme,
      home: Wisdom(),
    ),
  );
}
class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 1;
  List quotes = [
    "The purpose of our lives is to be happy.",
    "Life is what happens when you’re busy making other plans.",
    "Get busy living or get busy dying.",
    "You only live once, but if you do it right, once is enough.",
    "Many of life’s failures are people who did not realize how close they were to success when they gave up.",
    "If you want to live a happy life, tie it to a goal, not to people or things.",
    "Never let the fear of striking out keep you from playing the game.",
    "Money and success don’t change people; they merely amplify what is already there.",
    "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.",
    "Not how long, but how well you have lived is the main thing.",
    "If life were predictable it would cease to be life, and be without flavor.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Expanded(
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                margin: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(14.0)),
                child: Center(
                  child: Text(
                    quotes[_index % quotes.length],
                    style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 10.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(20, 0, 0, 0),
                          ),
                          Shadow(
                            offset: Offset(1.0, 10.0),
                            blurRadius: 8.0,
                            color: Color.fromARGB(100, 0, 0, 100),
                          ),
                        ]),
                  ),
                ),
              ),
            )),
        const Divider(thickness: 3, color: Colors.black),
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: FlatButton.icon(
              color: Colors.green,
              hoverColor: Colors.lightGreenAccent,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: showQuote,
              icon: const Icon(Icons.wb_sunny),
              label: const Text("Inspire Me!!")),
        ),
        const Spacer(),
      ]),
    );
  }

  void showQuote() {
    setState(() {
      _index += 1;
    });
  }
}