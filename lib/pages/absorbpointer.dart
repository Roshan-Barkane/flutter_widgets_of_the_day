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
        centerTitle: true,
        title: Text(
          widget.title.toUpperCase(),
        ),
      ),
    );
  }
}
