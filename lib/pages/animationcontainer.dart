import 'package:flutter/material.dart';

class Animation_Container extends StatefulWidget {
  const Animation_Container({super.key});

  @override
  State<Animation_Container> createState() => _Animation_ContainerState();
}

class _Animation_ContainerState extends State<Animation_Container> {
  var _size = 200.0;
  var _Takecolor = 0xFF00BB00;
  var _TextColor = 0xFF000000;
  var _TextSize = 18.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(seconds: 4),
              height: _size,
              width: _size,
              color: Color(
                _Takecolor,
              ),
              child: Center(
                  child: Text(
                "Animation Controller",
                style: TextStyle(color: Color(_TextColor), fontSize: _TextSize),
              )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _size = 300;
                _Takecolor = 0xFFaa00bb;
                _TextColor = 0xFFFFFFFF;
                _TextSize = 26;
              });
            },
            child: Text(
              "Action",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
