import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconRectangularButton extends StatelessWidget {
  const IconRectangularButton({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.onPressed,
    this.height = 64,
    this.imageScale = 4,
    this.radius = 24,
    required this.iconColor,
  });
  final Color backgroundColor;
  final String imagePath;
  final Function()? onPressed;
  final double height;
  final double imageScale;
  final double radius;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
          backgroundColor: WidgetStateProperty.all(backgroundColor),
        ),
        label: SvgPicture.asset(
          imagePath,
          width: 24,
          height: 24,
          color: iconColor,
        ),
      ),
    );
  }
}
