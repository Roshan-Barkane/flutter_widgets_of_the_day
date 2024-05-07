import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  const PositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.orange.shade100,
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow.shade700,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                  bottom: 40,
                  left: MediaQuery.of(context).size.width / 2.5,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.orange.shade100,
                    ),
                  )),
              Positioned(
                top: 40,
                left: 40,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
