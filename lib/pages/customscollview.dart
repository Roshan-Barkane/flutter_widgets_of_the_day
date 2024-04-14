import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Custom Scroll View ",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text("Indes $index"),
              );
            }),
          ),
        ],
      ),
    );
  }
}
