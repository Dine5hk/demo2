import 'package:flutter/material.dart';

void main() {
  runApp(InitialPage());
}

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calc(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(         
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.bottomRight,
                child: Text(
                  text,
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(children: [
              CustomOutlinedButton("9"),
              CustomOutlinedButton("8"),
              CustomOutlinedButton("7"),
              CustomOutlinedButton("+"),
            ]),
            Row(children: [
              CustomOutlinedButton("6"),
              CustomOutlinedButton("5"),
              CustomOutlinedButton("4"),
              CustomOutlinedButton("-"),
            ]),
            Row(children: [
              CustomOutlinedButton("3"),
              CustomOutlinedButton("2"),
              CustomOutlinedButton("1"),
              CustomOutlinedButton("x"),
            ]),
            Row(children: [
              CustomOutlinedButton("c"),
              CustomOutlinedButton("0"),
              CustomOutlinedButton("="),
              CustomOutlinedButton("/"),
            ]),
          ],
        ),
      ),
    );
  }

  Widget CustomOutlinedButton(String valu) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          butnClicked(valu);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            valu,
            style: TextStyle(fontSize: 35.0),
          ),
        ),
      ),
    );
  }

  int first = 0, sec = 0;
  String res = "", text = "";
  String opp = "";
  void butnClicked(String butnText) {
    if (butnText == "c") {
      text = " ";
      res = "";
      first = 0;
      sec = 0;
    } else if (butnText == "+" ||
        butnText == "-" ||
        butnText == "x" ||
        butnText == "/") {
      first = int.parse(text);

      res = "";
      opp = butnText;
    } else if (butnText == "=") {
      sec = int.parse(text);
      if (opp == "+") {
        res = (first + sec).toString();
      } else if (opp == "-") {
        res = (first - sec).toString();
      } else if (opp == "/") {
        res = (first / sec).toString();
      } else if (opp == "x") {
        res = (first * sec).toString();
      }
    } else {
      res = int.parse(text + butnText).toString();
    }

    setState(() {
      text = res;
    });
  }
}