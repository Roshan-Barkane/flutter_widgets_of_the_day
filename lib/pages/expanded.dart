import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  height: 200,
                  color: Colors.red,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 40,
                            child: Text(
                              "A",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        );
                      })),
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 200,
                color: Colors.orange,
              ),
            ),
            Container(
              height: 200,
              color: Colors.deepOrange,
            ),
          ],
        ),
      ),
    );
  }
}
