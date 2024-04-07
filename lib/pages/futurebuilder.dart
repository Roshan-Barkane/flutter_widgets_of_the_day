import 'package:flutter/material.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  // simple templete of future function taken the some time then return the integer value / somethings
  Future<int> futureFunction() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return 0;
  }

  // this function return the current time and date the used fatch the date api and database
  Future<DateTime> futureFunctionaip() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    return DateTime.now();
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
              future: futureFunctionaip(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.connectionState == ConnectionState.done ||
                    snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasError) {
                    return Text(
                      snapshot.error.toString(),
                    );
                  } else if (snapshot.hasData) {
                    return Text(
                      snapshot.data.toString(),
                      style: const TextStyle(fontSize: 25),
                    );
                  } else {
                    return Text("Some thinks is wrong");
                  }
                } else {
                  return Text(
                    snapshot.connectionState.toString(),
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
