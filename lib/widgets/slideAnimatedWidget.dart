import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;

  SlideAnimation({this.child});

  @override
  _SlideAnimationState createState() => _SlideAnimationState();
}

class _SlideAnimationState extends State<SlideAnimation>
    with SingleTickerProviderStateMixin {
  Tween<Offset> tween;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1200));
    animation = CurvedAnimation(parent: controller, curve: Curves.fastLinearToSlowEaseIn);
    tween = Tween<Offset>(begin: Offset(0, -0.5), end: Offset(0, 0));
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation.drive(tween),
      child: FadeTransition(
        opacity: animation,
        child: widget.child,
      ),
    );
  }
}
