import 'package:flutter/material.dart';
import 'package:meet_singles/config/theme/app_color.dart';

class AnimatedPulsatingWidget extends StatefulWidget {
  const AnimatedPulsatingWidget({super.key});

  @override
  State<AnimatedPulsatingWidget> createState() =>
      _AnimatedPulsatingWidgetState();
}

class _AnimatedPulsatingWidgetState extends State<AnimatedPulsatingWidget>
    with TickerProviderStateMixin {
  late AnimationController _pulseController;
  late AnimationController _moveController;
  late Animation<double> _pulseAnimation;
  late Animation<double> _moveAnimation;

  @override
  void initState() {
    super.initState();

    // Animation Controller for Pulsating Effect
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    // Animation Controller for Up & Down Motion
    _moveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..repeat(reverse: true);

    // Pulsating Animation (size increase and decrease)
    _pulseAnimation = Tween<double>(begin: 1, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    // Up & Down Animation (movement)
    _moveAnimation = Tween<double>(begin: -60, end: 60).animate(
      CurvedAnimation(parent: _moveController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _moveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.backgroundColor, // Background color
          border: Border.all(width: 6, color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Pulsating Background Circle
              AnimatedBuilder(
                animation: _pulseAnimation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _pulseAnimation.value,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green.shade50,
                        ),
                      ),
                    ),
                  );
                },
              ),

              // Moving Horizontal Bar
              AnimatedBuilder(
                animation: _moveAnimation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _moveAnimation.value),
                    child: Container(
                      width: 102,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
