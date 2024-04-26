import 'package:flutter/material.dart';

class AbsorbPinter_Widget extends StatefulWidget {
  final String title;
  const AbsorbPinter_Widget({super.key, required this.title});

  @override
  State<AbsorbPinter_Widget> createState() => _AbsorbPinterWidgetState();
}

class _AbsorbPinterWidgetState extends State<AbsorbPinter_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          widget.title.toUpperCase(),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              child: Container(
                height: 200,
                width: 400,
                child: const Card(
                  elevation: 10,
                  color: Colors.blue,
                  shape: BeveledRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              onTap: () {
                print("Color is blue");
              },
            ),
            GestureDetector(
              child: Container(
                height: 150,
                width: 300,
                child: const Card(
                  elevation: 10,
                  color: Colors.green,
                  shape: BeveledRectangleBorder(
                    side: BorderSide(color: Colors.black, width: 1),
                  ),
                ),
              ),
              onTap: () {
                print("Color is green");
              },
            ),
          ],
        ),
      ),
    );
  }
}
