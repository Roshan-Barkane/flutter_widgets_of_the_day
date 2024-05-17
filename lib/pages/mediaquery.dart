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
          // add the height with MediaQuery
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1.2,
          decoration: const BoxDecoration(color: Colors.blue),
        ),
      ),
    );
  }
}
