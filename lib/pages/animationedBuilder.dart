import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AnimatedBuilderFunction(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: const Text(
                "PlayStore",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedBuilderFunction extends StatefulWidget {
  const AnimatedBuilderFunction({super.key});

  @override
  State<AnimatedBuilderFunction> createState() =>
      _AnimatedBuilderFunctionState();
}

class _AnimatedBuilderFunctionState extends State<AnimatedBuilderFunction>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Container(
            height: 100,
            width: 100,
            child: Image.asset("assets/Playstore.png"),
          ),
        );
      },
    );
  }
}
