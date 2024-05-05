import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        //alignment: Alignment(0.4, 0.6),
        heightFactor: 1.5,
        widthFactor: 1.0,
        /* Align Widget we used to align the child diff-diff position 
        propertices :-1.  alignmernt: Alignment.topLeft,topCenter,topRight,
                                            centerLeft,center,centerRight,
                                            bottonLeft, bottonCenter,bottonRight
        with x and y Alignment(0.3,0.5),
      2. heightFactor : value {interger/double}  multiple height with child
      2. widgetFactor : value {interger/double}  multiple widget with child
 */
        child: Container(
          height: 200,
          width: 200,
          color: Colors.black,
        ),
      ),
    );
  }
}
