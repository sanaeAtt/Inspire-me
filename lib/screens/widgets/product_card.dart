import 'package:flutter/material.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.aspectRatio = 1.02,
    required this.onPress,
    required this.img,
  });

  final double aspectRatio;
  final String img;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                stops: const [.1, .9],
                colors: [
                  TColors.black.withOpacity(.8),
                  TColors.black.withOpacity(.1),
                ],
                begin: Alignment.bottomRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
