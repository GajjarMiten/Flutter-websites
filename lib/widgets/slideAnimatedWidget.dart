import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;
  final Offset begin;
  final Offset end;
  final int waitTime;

  SlideAnimation({this.child, this.begin, this.end, this.waitTime});

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
    controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: (widget.waitTime ?? 1) * 1200));
    animation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);
    tween = Tween<Offset>(begin: widget.begin, end: widget.end);
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
