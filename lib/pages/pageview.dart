import 'package:flutter/material.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  var _index = 1;
  /*PageView widget is provide scolling fetures in many pages but its not work similar to navigator
   properties : childer, PageSnapping, scollDirection, onChanged, revers, physics */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      onPageChanged: (value) {
        setState(() {
          _index = value;
        });
      },
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/p1.jpg",
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Contribution",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.shade400),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 20, top: 20),
              child: Text(
                "Used to provide mutual exclusion solution using the an semaphore can load to have deadlock may load to any priority inversion",
                style: TextStyle(
                    color: Colors.orangeAccent.shade400, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            row(index: _index),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/p2.jpg",
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Contribution",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.shade400),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 20, top: 20),
              child: Text(
                "Used to provide mutual exclusion solution using the an semaphore can load to have deadlock may load to any priority inversion",
                style: TextStyle(
                    color: Colors.orangeAccent.shade400, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            row(index: _index),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/p3.jpg",
              height: 300,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Contribution",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue.shade400),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30, left: 20, top: 20),
              child: Text(
                "Used to provide mutual exclusion solution using the an semaphore can load to have deadlock may load to any priority inversion",
                style: TextStyle(
                    color: Colors.orangeAccent.shade400, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            row(index: _index),
          ],
        ),
      ],
    ));
  }
}

class row extends StatelessWidget {
  const row({
    super.key,
    required int index,
  }) : _index = index;

  final int _index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _index == 2
            ? const Icon(
                Icons.circle,
                color: Colors.blue,
                size: 20,
              )
            : const Icon(
                Icons.circle,
                color: Colors.black,
                size: 20,
              ),
        _index == 2
            ? const Icon(
                Icons.circle,
                color: Colors.blue,
                size: 20,
              )
            : const Icon(
                Icons.circle,
                color: Colors.black,
                size: 20,
              ),
        _index == 3
            ? const Icon(
                Icons.circle,
                color: Colors.blue,
                size: 20,
              )
            : const Icon(
                Icons.circle,
                color: Colors.black,
                size: 20,
              ),
      ],
    );
  }
}
