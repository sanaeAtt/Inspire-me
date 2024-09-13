import 'package:flutter/material.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';
import 'package:inspiration_app_ui_and_animation/helpers/helper_functions.dart';

class HeaderCataloguePage extends StatelessWidget {
  const HeaderCataloguePage({
    super.key,
    required this.img,
    required this.gif,
  });
  final String img, gif;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: TColors.background,
      height: 140,
      child: Stack(
        children: [
          // Positionedlogo
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width / 2 -
                (HelperFuctions.screenWidth(context) * .5 / 2),
            child: SizedBox(
              height: HelperFuctions.screenHeight(context) * .1,
              width: HelperFuctions.screenWidth(context) * .5,
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Positionned gif
          Positioned(
            top: 10,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                gif,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
