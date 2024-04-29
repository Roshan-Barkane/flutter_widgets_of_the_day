import 'package:flutter/material.dart';

class TansformWidget extends StatefulWidget {
  const TansformWidget({super.key});

  @override
  State<TansformWidget> createState() => _TansformWidgetState();
}

class _TansformWidgetState extends State<TansformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Transform.rotate(
              /* angle are taking 0 to 1
                if -ve value you roted by anticlockwise
                if +ve value you roted by unticlockwise 
               */
              angle: 1,
              /* origin takes offset its have to paramiter 
                x-direction and y-direction */
              origin: const Offset(100, 100),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            Transform.scale(
              scale: 0.2,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
