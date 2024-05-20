import 'package:flutter/material.dart';

class AnimatedIconsWidget extends StatefulWidget {
  const AnimatedIconsWidget({super.key});

  @override
  State<AnimatedIconsWidget> createState() => _AnimatedIconsWidgetState();
}

class _AnimatedIconsWidgetState extends State<AnimatedIconsWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isActive = false;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        toolbarHeight: 100,
        title: const Text("AnimatedIcon Widget"),
      ),
      body: Center(
        child: IconButton(
          onPressed: () {
            setState(() {
              isActive = !isActive;
              isActive
                  ? _animationController.forward()
                  : _animationController.reverse();
            });
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _animationController,
            size: 100,
          ),
        ),
      ),
    );
  }
}
