import 'package:flutter/cupertino.dart';

extension Nav on BuildContext {
  // push named navigation context.to(route);
  void toNamed(String route) => Navigator.pushNamed(this, route);
  // void pushNamedReplacement context.toPushNamedReplacement(route);
  void toPushNamedReplacement(String route) =>
      Navigator.pushReplacementNamed(this, route);
  // pop navigation context.pop();
  void pop() => Navigator.pop(this);
}
