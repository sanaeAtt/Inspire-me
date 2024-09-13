import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';
import 'package:inspiration_app_ui_and_animation/constants/sizes.dart';
import 'package:inspiration_app_ui_and_animation/helpers/helper_functions.dart';

class BestDesignContainer extends StatefulWidget {
  const BestDesignContainer({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });
  final String img, title, subtitle;

  @override
  _BestDesignContainerState createState() => _BestDesignContainerState();
}

class _BestDesignContainerState extends State<BestDesignContainer> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTapDown: (_) => setState(() {
            _isTapped = true;
          }),
          onTapUp: (_) => setState(() {
            _isTapped = false;
          }),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: TColors.primary,
            ),
            width: HelperFuctions.screenWidth(context) * .9,
            height: HelperFuctions.screenHeight(context) * .24,
            child: Stack(
              children: [
                // ClipRRect pour ne ps dépasser l'container'
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    transform: Matrix4.identity()..scale(_isTapped ? 1.1 : 1.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.img),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: HelperFuctions.screenWidth(context) * .9,
                    height: HelperFuctions.screenHeight(context) * .24,
                  ),
                ),

                // effet gradient
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      stops: const [.3, .9],
                      colors: [
                        TColors.black.withOpacity(.8),
                        TColors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Spacer(),
                          Text(
                            widget.title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.subtitle,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(TSizes.spaceBtwItm),
      ],
    );
  }
}
