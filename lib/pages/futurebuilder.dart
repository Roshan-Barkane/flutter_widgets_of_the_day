import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  Future<int> futureFunction() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // this function is used futureBuilder in work on api intrication handle the situation
            FutureBuilder(
              future: futureFunction(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return Text(
                    snapshot.data.toString(),
                    style: TextStyle(fontSize: 25),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
