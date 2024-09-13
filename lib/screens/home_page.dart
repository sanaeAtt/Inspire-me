import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';
import 'package:inspiration_app_ui_and_animation/constants/imgesString.dart';
import 'package:inspiration_app_ui_and_animation/helpers/helper_functions.dart';
import 'package:inspiration_app_ui_and_animation/constants/strings.dart';
import 'package:inspiration_app_ui_and_animation/screens/catalogue_page.dart';
import 'package:inspiration_app_ui_and_animation/screens/widgets/home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = HelperFuctions.isDarkMode(context);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark ? TColors.backgroundDark : TColors.primary,
      statusBarIconBrightness: isDark ? Brightness.dark : Brightness.light,
    ));
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: (detail) {
          if (detail.primaryDelta! < 0) {
            HelperFuctions.navigateToScreen(context, const CataloguePage());
          }
        },
        child: SafeArea(
          child: Stack(
            children: [
              HomePageWidgets(
                isDark: isDark,
                img: TImages.lightAppLogo,
                title1: Strings.title1,
                title2: Strings.title2,
                desc: Strings.description,
              ),
              Positioned(
                bottom: 40,
                left: MediaQuery.of(context).size.width / 2 - 25,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    // color: TColors.primary,
                  ),
                  child: const Image(image: AssetImage(TImages.gif1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
