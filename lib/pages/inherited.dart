import 'package:flutter/material.dart';
import 'package:flutter_widgets_of_the_day/pages/data.dart';

class Inherit extends InheritedWidget {
  final Widget child;
  final DataBase database;
  const Inherit({Key? key, required this.child, required this.database})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static Inherit? of(BuildContext context) {
    Inherit? inherit = context.dependOnInheritedWidgetOfExactType();
    return inherit;
  }
}
