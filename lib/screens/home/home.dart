import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //set route name
  static const String routeName = '/';

  // implement the routing method
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: CustomAppBar(title: "Okey's shop"),
      bottomNavigationBar: CustomBottomNav(),
      body: Container(
          margin: EdgeInsets.only(top: 20),
          child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                viewportFraction: 0.9,
              ),
              items: Category.categories
                  .map((e) => HeroCarouselCard(category: e))
                  .toList())),
    );
  }
}
