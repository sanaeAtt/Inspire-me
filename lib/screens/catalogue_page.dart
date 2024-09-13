import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:inspiration_app_ui_and_animation/constants/colors.dart';
import 'package:inspiration_app_ui_and_animation/constants/fake_data.dart';
import 'package:inspiration_app_ui_and_animation/constants/imgesString.dart';
import 'package:inspiration_app_ui_and_animation/constants/sizes.dart';
import 'package:inspiration_app_ui_and_animation/constants/strings.dart';
import 'package:inspiration_app_ui_and_animation/helpers/helper_functions.dart';
import 'package:inspiration_app_ui_and_animation/screens/widgets/best_design_container.dart';
import 'package:inspiration_app_ui_and_animation/screens/widgets/header_catalogue_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:inspiration_app_ui_and_animation/screens/widgets/product_card.dart';
import 'package:inspiration_app_ui_and_animation/screens/widgets/search_bar.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  _CataloguePageState createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta! > 0) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HeaderCataloguePage(
                  img: TImages.lightAppLogo,
                  gif: TImages.gif2,
                ),
                Container(
                  height: HelperFuctions.screenHeight(context) * .15,
                  decoration: const BoxDecoration(
                    color: TColors.background,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(TSizes.borderRadiusXl),
                      bottomRight: Radius.circular(TSizes.borderRadiusXl),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.defaultSpace),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SearchBarWidget(
                          hint: Strings.searchHint,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Explore Trendsetting Designs",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: TColors.textprimary,
                                fontFamily: "Montserat"),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(TSizes.spaceBtwItm),
                _buildCarousolView(context),
                const Gap(TSizes.spaceBtwItm),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Best Design",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: TColors.accent),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: FakeData.bestDesign.length,
                          itemBuilder: (context, index) {
                            return BestDesignContainer(
                              img: FakeData.designs[index]['image']!,
                              title: FakeData.designs[index]['title']!,
                              subtitle: FakeData.designs[index]['subtitle']!,
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ConstrainedBox _buildCarousolView(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: HelperFuctions.screenHeight(context) * .3),
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: FakeData.bannerImages.length,
            itemBuilder: (context, index, realIndex) {
              return ProductCard(
                onPress: () {},
                img: FakeData.bannerImages[index],
                aspectRatio: HelperFuctions.screenWidth(context) * .7,
              );
            },
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 0.8,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                FakeData.bannerImages.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
