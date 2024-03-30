import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  const WrapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey.shade300,
          child: Wrap(
            // wrap widget is a resolve the overflow condition in row & column widget
            // this widget make help build gallry patter in just five second.
            direction: Axis.horizontal,
            spacing: 8.0, //space of column
            runSpacing: 10.0, //space of row
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red.shade400,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red.shade400,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 200,
                width: 300,
                color: Colors.red.shade400,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                width: 200,
                color: Colors.red.shade400,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
