import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  Color _color = new Color.fromARGB(255, 156, 39, 176);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        /* elevation: 0,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          side: BorderSide(
            color: Colors.cyan,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),*/
        // mini: true,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            if (_color == Colors.purple) {
              _color = Colors.yellow;
            } else {
              _color = Colors.purple;
            }
          });
        },
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                  ),
                  Text(
                    "Home",
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Icon(
                    Icons.shop,
                  ),
                  Text(
                    "Shop",
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Icon(
                    Icons.favorite,
                  ),
                  Text(
                    "Fav",
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Icon(
                    Icons.settings,
                  ),
                  Text(
                    "Setting",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
