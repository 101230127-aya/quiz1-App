import 'package:flutter/material.dart';

class Feel extends StatefulWidget {
  const Feel({super.key});
  @override
  State<Feel> createState() => _FeelState();
}

class _FeelState extends State<Feel> {
  String appear = "❓";
  int happy = 0;
  int tired = 0;
  int angry = 0;

  void play(String input) {
    setState(() {
      appear = input;
      if (input == "😊") {
        happy++;
      }
      if (input == "😴") {
        tired++;
      }
      if (input == "😡") {
        angry++;
      }
    });
  }

  void reset() {
    setState(() {
       appear = "❓";
       happy = 0;
       tired = 0;
       angry = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 60, 106, 204),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "How do you feel today?",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(appear, style: TextStyle(fontSize: 25)),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  onPressed: () => play("😊"),
                  child: Text("😊 Happy", style: TextStyle(fontSize: 10)),
                ),
                OutlinedButton(
                  onPressed: () => play("😴"),
                  child: Text("😴 Tired", style: TextStyle(fontSize: 10)),
                ),
                OutlinedButton(
                  onPressed: () => play("😡"),
                  child: Text("😡 Angry", style: TextStyle(fontSize: 10)),
                ),
              ],
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: reset,
              child: Text("Reset", style: TextStyle(fontSize: 7)),
            ),
            SizedBox(height: 20),
            Text(
              "😊 Happy$happy",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
            Text(
              "😴 Tired$tired",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
            Text(
              "😡 Angry$angry",
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
