import 'package:flutter/material.dart';

class Stream_Builder extends StatefulWidget {
  const Stream_Builder({super.key});

  @override
  State<Stream_Builder> createState() => _Stream_BuilderState();
}

class _Stream_BuilderState extends State<Stream_Builder> {
  // make  a stream fuction becouse steam: are take steame function
  /* async replays async* , becouse its return multiple value with runing steam time */
  Stream<int> generator() async* {
    yield 12;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          StreamBuilder(
              stream: generator(),
              builder: (context, snapshot) {
                return Text(snapshot.data.toString());
              })
        ],
      ),
    );
  }
}
