import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({super.key});

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  var _opacity_var = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            color: Colors.yellow.shade700,
          ),
          AnimatedContainer(
            duration: Duration(seconds: 7),
            child: Opacity(
              opacity: _opacity_var,
              child: Container(
                height: 200,
                color: Colors.red.shade700,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _opacity_var = 1.0;
              });
            },
            child: Container(
              height: 200,
              color: Colors.blue.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
