import 'package:flutter/material.dart';

class MyCal extends StatefulWidget {
  const MyCal({super.key});

  @override
  State<MyCal> createState() => _MyCalState();
}

class _MyCalState extends State<MyCal> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  String result = "";

  void add() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int res = num1 + num2;
    setState(() {
      result = res.toString();
    });
  }

  void sub() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int res = num1 - num2;
    setState(() {
      result = res.toString();
    });
  }

  void mul() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    int res = num1 * num2;
    setState(() {
      result = res.toString();
    });
  }

  void div() {
    int num1 = int.parse(num1Controller.text);
    int num2 = int.parse(num2Controller.text);
    double res = num1 / num2;
    setState(() {
      result = res.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 166, 64),
        title: Text('CALCULATOR'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextFormField(
            controller: num1Controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: Color.fromARGB(255, 50, 5, 48)),
                ),
                errorBorder: OutlineInputBorder(),
                fillColor: const Color.fromARGB(255, 159, 197, 84),
                filled: true,
                prefixIcon: Icon(
                  Icons.calculate,
                  color: const Color.fromARGB(255, 4, 3, 0),
                ),
                hintText: "enter number 1",
                labelText: "Number 1"),
          ),
          TextFormField(
            controller: num2Controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 2, color: const Color.fromARGB(255, 50, 5, 48))),
              focusedBorder: OutlineInputBorder(),
              fillColor: const Color.fromARGB(255, 225, 121, 119),
              filled: true,
              prefixIcon: Icon(
                Icons.calculate,
                color: const Color.fromARGB(255, 9, 4, 7),
              ),
              hintText: "enter number 2",
              labelText: "Number 2",
            ),
          ),
          ElevatedButton(
              onPressed: () {
                add();
              },
              child: Text("+")),
          ElevatedButton(
              onPressed: () {
                sub();
              },
              child: Text("-")),
          ElevatedButton(
              onPressed: () {
                mul();
              },
              child: Text("*")),
          ElevatedButton(
              onPressed: () {
                div();
              },
              child: Text("/")),
          Text(result)
        ],
      ),
    );
  }
}
