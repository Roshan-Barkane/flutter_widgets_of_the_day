import 'package:flutter/material.dart';

class MediaQueryWidgets extends StatefulWidget {
  const MediaQueryWidgets({super.key});

  @override
  State<MediaQueryWidgets> createState() => _MediaQueryWidgetsState();
}

class _MediaQueryWidgetsState extends State<MediaQueryWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ),
    );
  }
}
