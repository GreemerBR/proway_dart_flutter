import 'package:flutter/material.dart';

class InheritedDate extends InheritedWidget {
  const InheritedDate({Key? key, required this.child})
      : super(key: key, child: child);

  @override
  // ignore: overridden_fields
  final Widget child;
  final String dateTemp = '17 de maio de 1993';

  static InheritedDate? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedDate>();
  }

  @override
  bool updateShouldNotify(InheritedDate oldWidget) {
    return true;
  }
}
