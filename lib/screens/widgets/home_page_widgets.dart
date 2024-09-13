import 'package:gap/gap.dart';
import 'package:inspiration_app_ui_and_animation/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';
import 'package:inspiration_app_ui_and_animation/helpers/helper_functions.dart';

class HomePageWidgets extends StatelessWidget {
  const HomePageWidgets({
    super.key,
    required this.isDark,
    required this.img,
    required this.title1,
    required this.title2,
    required this.desc,
  });

  final bool isDark;
  final String img;
  final String title1;
  final String title2;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: isDark ? TColors.backgroundDark : TColors.background,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: HelperFuctions.screenHeight(context) * .2,
            color: isDark ? TColors.backgroundDark : TColors.background,
          ),
          SizedBox(
            height: HelperFuctions.screenHeight(context) * .2,
            width: HelperFuctions.screenWidth(context) * .8,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(
                img,
              ),
            ),
          ),
          const Gap(TSizes.spaceBtwSection),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 50,
                    color: TColors.textprimary,
                  ),
                ),
                Text(
                  title2,
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 40,
                    color: TColors.textprimary,
                  ),
                ),
                const Gap(TSizes.spaceBtwSection),
                Text(
                  desc,
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 18,
                    color: TColors.textsecodary,
                  ),
                ),
              ],
            ),
          ),
          const Gap(TSizes.spaceBtwSection),
        ],
      ),
    );
  }
}
