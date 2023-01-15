import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class Catalogcreen extends StatelessWidget {
  const Catalogcreen({Key? key}) : super(key: key);

  //set route name
  static const String routeName = '/catalog';

  // implement the routing method
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => Catalogcreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Your catalog"),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
