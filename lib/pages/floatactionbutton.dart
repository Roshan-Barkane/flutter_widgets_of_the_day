import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  Color _color = Color.fromARGB(255, 250, 226, 254);
  var _text = "Initpage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          /* side: BorderSide(
            color: Colors.cyan,
            width: 2,
            style: BorderStyle.solid,
          ),*/
        ),
        // mini: true,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
        onPressed: () {
          setState(() {
            if (_color != Colors.yellow) {
              _color = Colors.yellow;
            }
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(bottom: 10),
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_color != Colors.red) {
                        _color = Colors.red;
                        _text = "Home Page";
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_color != Colors.purple) {
                        _color = Colors.purple;
                        _text = "Shoping Page";
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.shop,
                    color: Colors.purple,
                  ),
                ),
                const Text(
                  "Shop",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_color != Colors.blue) {
                        _color = Colors.blue;
                        _text = "Favirate Page";
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "Fav",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (_color != Colors.deepOrange) {
                        _color = Colors.deepOrange;
                        _text = "Setting Page";
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.deepOrange,
                  ),
                ),
                const Text(
                  "Setting",
                  style: TextStyle(color: Colors.black),
                )
              ],
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          _text,
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
