import 'package:flutter/material.dart';

class SlideTransitionX extends AnimatedWidget {
  SlideTransitionX({
    Key? key,
    required Animation<double> position,
    required this.child,
    this.direction = AxisDirection.right,
  }) : super(key: key, listenable: position);

  final Widget child;
  final AxisDirection direction;

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;

    double dx = 0.0;
    double dy = 0.0;

    switch (direction) {
      case AxisDirection.right:
        dx = animation.value;
        break;
      case AxisDirection.left:
        dx = -animation.value;
        break;
      case AxisDirection.down:
        dy = animation.value;
        break;
      case AxisDirection.up:
        dy = -animation.value;
        break;
    }

    return Transform.translate(
      offset: Offset(dx, dy),
      child: child,
    );
  }
}
