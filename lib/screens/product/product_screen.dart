import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  //set route name
  static const String routeName = '/product';

  // implement the routing method
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Okey's shop"),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
