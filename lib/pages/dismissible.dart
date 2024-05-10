import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fauilts = [
    'Apple',
    'Orange',
    'Grapus',
    'Pupalu',
    'Mongo',
    'Banana',
    'Apple',
    'Orange',
    'Grapus',
    'Pupalu',
    'Mongo',
    'Banana',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.blue,
        title: const Text(
          "Dismissible Widget",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final fruts = fauilts[index];

          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.endToStart) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text(
                        fauilts[index],
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.green,
                      content: Text(
                        fauilts[index],
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  );
                }
              },
              key: Key(fruts),
              background: Container(
                width: 50,
                color: Colors.green,
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                width: 50,
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.delete,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              child: Card(
                child: ListTile(
                  title: Text(
                    fauilts[index],
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ));
        },
        itemCount: fauilts.length,
      ),
    );
  }
}
