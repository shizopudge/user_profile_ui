import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({
    super.key,
    required this.delay,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
        .tween(
          'opacity',
          Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 500),
        )
        .thenTween(
          'translateY',
          Tween(begin: 130.0, end: 0.0),
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
        );
    return PlayAnimationBuilder(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: tween.duration,
      tween: tween.parent,
      child: child,
      builder: (context, animation, child) => Opacity(
        opacity: animation.get(
          'opacity',
        ),
        child: Transform.translate(
          offset: Offset(
            0,
            animation.get(
              'translateY',
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
