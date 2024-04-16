import 'package:flutter/material.dart';

class CustomScrollViewWidget extends StatefulWidget {
  const CustomScrollViewWidget({super.key});

  @override
  State<CustomScrollViewWidget> createState() => _CustomScrollViewWidgetState();
}

class _CustomScrollViewWidgetState extends State<CustomScrollViewWidget> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/p1.jpg",
                fit: BoxFit.cover,
              ),
            ),

            /*title: const Text(
              "Custom Scroll View ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),*/

            leading: Container(
              width: 40,
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: const Icon(
                Icons.arrow_left_rounded,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return count != 10
                  ? ListTile(
                      title: Text("Indes $index"),
                    )
                  : Container();
            }),
          ),
        ],
      ),
    );
  }
}
