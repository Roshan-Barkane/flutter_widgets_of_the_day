import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Tooltip(
          message: "Wife",
          child: Icon(
            Icons.wifi,
            size: 50,
          ),
        ),
      ),
    );
  }
}
