import 'package:flutter/material.dart';

class Page_View extends StatefulWidget {
  const Page_View({super.key});

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  /*PageView widget is provide scolling fetures in many pages but its not work similar to navigator
   properties : childer, PageSnapping, scollDirection, onChanged, revers, physics */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children:const   [
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          ],
        ),
        Column(
          children: [],
        ),
        Column(
          children: [],
        ),
      ],
    ));
  }
}
