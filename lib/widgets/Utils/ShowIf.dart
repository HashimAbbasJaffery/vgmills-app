import 'package:flutter/widgets.dart';

class ShowIf extends StatelessWidget {
  bool condition;
  Widget child;
  ShowIf({ required this.condition, required this.child });

  @override
  Widget build(BuildContext context) {
    return condition == false ? child : SizedBox.shrink();
  }
}