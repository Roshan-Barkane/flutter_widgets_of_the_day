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
            double width = constraints.minWidth;
            double height = constraints.maxHeight;
            // write the condition
            if (height < 600) {
              // Mobails Layout
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    ),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width * 0.45,
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              );
            } else {
              // PC Layout
            }
            return Container(
              height: 100,
              color: Colors.yellow,
            );
          },
        ),
      ),
    );
  }
}
