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
              /* origin takes offset its have to paramiter means change the position
                 x-direction [-] and y-direction [|]*/
              origin: const Offset(100, 100),
              // offset not depand center
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            Transform.scale(
              //scale are increase height and widget
              scale: 0.50,
              origin: const Offset(500, 100),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            /* tanslate propety is not depand origin value its take offset set the position x and y direction */
            Transform.translate(
              offset: const Offset(100, 10),
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
