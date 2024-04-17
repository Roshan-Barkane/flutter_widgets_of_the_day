import 'package:flutter/material.dart';

import 'package:flutter_widgets_of_the_day/pages/inherited.dart';

class InheritedModelWidget extends StatefulWidget {
  @override
  State<InheritedModelWidget> createState() => _InheritedModelWidgetState();
}

class _InheritedModelWidgetState extends State<InheritedModelWidget> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var data = Inherit.of(context)?.database;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("${data?.Name()}"),
              Text("${data?.Phone()}"),
            ],
          ),
        ),
      ),
    );
  }
}
