import 'package:flutter/material.dart';

class FaceTransistion extends StatefulWidget {
  const FaceTransistion({super.key});

  @override
  State<FaceTransistion> createState() => _FaceTransistionState();
}

class _FaceTransistionState extends State<FaceTransistion>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2),
  )..repeat(reverse: true);

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: const FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}
