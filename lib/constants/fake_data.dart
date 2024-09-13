import 'package:inspiration_app_ui_and_animation/constants/imgesString.dart';

class FakeData {
  static List<String> bannerImages = [
    TImages.banner1,
    TImages.banner2,
    TImages.banner3,
    TImages.banner4,
    TImages.banner5,
    TImages.banner6,
    TImages.banner7,
    TImages.banner8,
  ];

  static List<String> bestDesign = [
    TImages.bestDesign1,
    TImages.bestDesign2,
    TImages.bestDesign3,
  ];
  static List<String> titles = [
    "Infographie Communication Graphisme",
    "Cofee design",
    "Food Delivery App",
  ];
  static List<String> subtitles = [
    "by XYSLAB",
    "by Галина Полищук",
    "Design Vision",
  ];
  static List<Map<String, String>> designs = List.generate(
    bestDesign.length,
    (index) => {
      "image": bestDesign[index],
      "title": titles[index],
      "subtitle": subtitles[index],
    },
  );
}
