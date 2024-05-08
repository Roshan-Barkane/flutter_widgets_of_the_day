import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimatedBuilderFunction(),
    );
  }
}

class AnimatedBuilderFunction extends StatefulWidget {
  const AnimatedBuilderFunction({super.key});

  @override
  State<AnimatedBuilderFunction> createState() =>
      _AnimatedBuilderFunctionState();
}

class _AnimatedBuilderFunctionState extends State<AnimatedBuilderFunction> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
