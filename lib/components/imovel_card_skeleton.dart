import 'dart:ui';

import 'package:flutter/material.dart';

class ImovelCardSkeleton extends StatefulWidget {
  const ImovelCardSkeleton({
    super.key,
  });

  @override
  State<ImovelCardSkeleton> createState() => _ImovelCardSkeletonState();
}

class _ImovelCardSkeletonState extends State<ImovelCardSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Alignment> _tweenGradient;
  late CurvedAnimation _curveAnimation;

  void _createControllerForAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _curveAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.decelerate);

    _tweenGradient = TweenSequence([
      TweenSequenceItem(
        tween:
            AlignmentTween(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: AlignmentTween(
            begin: Alignment.topRight, end: Alignment.bottomRight),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: AlignmentTween(
            begin: Alignment.bottomRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem(
        tween:
            AlignmentTween(begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
    ]).animate(_curveAnimation);

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _createControllerForAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => SizedBox(
        height: 300,
        child: Card(
          color: Colors.white,
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: 156,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Colors.grey.shade300,
                          Colors.grey.shade600,
                        ],
                        radius: 4.0,
                        center: _tweenGradient.value,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF9F9F9),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red.shade600,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 23.0,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            Colors.grey.shade300,
                            Colors.grey.shade600,
                          ],
                          radius: 25.0,
                          center: _tweenGradient.value,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: RadialGradient(
                            colors: [
                              Colors.grey.shade300,
                              Colors.grey.shade600,
                            ],
                            radius: 15.0,
                            center: _tweenGradient.value,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.home_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: 86.0,
                            height: 23.0,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.grey.shade300,
                                  Colors.grey.shade600,
                                ],
                                radius: 15.0,
                                center: _tweenGradient.value,
                              ),
                            ),
                          ),
                        ),
                        const Icon(Icons.home_work_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Container(
                            width: 86,
                            height: 23.0,
                            decoration: BoxDecoration(
                              gradient: RadialGradient(
                                colors: [
                                  Colors.grey.shade300,
                                  Colors.grey.shade600,
                                ],
                                radius: 15.0,
                                center: _tweenGradient.value,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
