import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({super.key});

  @override
  State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // take the width and height
            double width = constraints.maxWidth;
            double height = constraints.maxHeight;
            // write the condition
            if (width < 600) {
              // Mobails Layout
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 500,
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      height: 200,
                      width: width,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              );
            } else {
              // PC Layout
            }
          },
        ),
      ),
    );
  }
}
