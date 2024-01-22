library tap_animator;

import 'package:flutter/material.dart';

class TapAnimator extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const TapAnimator({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 150),
  });

  @override
  State<TapAnimator> createState() => _TapAnimatorState();
}

class _TapAnimatorState extends State<TapAnimator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 1.0,
        end: 0.95,
      ).animate(_controller),
      child: Listener(
        onPointerDown: (_) => _controller.forward(),
        onPointerUp: (_) => _controller.reverse(),
        child: widget.child,
      ),
    );
  }
}
