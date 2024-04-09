import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  Color _color = new Color.fromARGB(255, 156, 39, 176);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_a_photo,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            if (_color == Colors.purple) {
              _color = Colors.yellow;
            } else {
              _color = Colors.purple;
            }
          });
        },
      ),
    );
  }
}
