import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<int> futureFunction() async {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FutureBuilder(
              future: futureFunction(),
              builder: (context, snapshot) {
                return Text(snapshot.data.toString());
              },
            )
          ],
        ),
      ),
    );
  }
}
