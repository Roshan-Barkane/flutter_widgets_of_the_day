import 'package:flutter/material.dart';

class Table_Widget extends StatefulWidget {
  const Table_Widget({super.key});

  @override
  State<Table_Widget> createState() => _Table_WidgetState();
}

class _Table_WidgetState extends State<Table_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          border: TableBorder.all(width: 2),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: const [
            TableRow(
              children: [
                Center(
                  child: Text(
                    "OS",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.window,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.android,
                  color: Colors.green,
                ),
                Icon(
                  Icons.apple,
                  color: Colors.purple,
                ),
              ],
            ),
            TableRow(
              children: [
                Center(
                  child: Text(
                    "Roshan",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
              ],
            ),
            TableRow(
              children: [
                Center(
                  child: Text(
                    "os",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
              ],
            ),
            TableRow(
              children: [
                Center(
                  child: Text(
                    "os",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
              ],
            ),
            TableRow(
              children: [
                Center(
                  child: Text(
                    "os",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
              ],
            ),
            TableRow(
              children: [
                Center(
                  child: Text(
                    "os",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
                Icon(Icons.access_alarm),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
