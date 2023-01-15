import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  //set route name
  static const String routeName = '/user';

  // implement the routing method
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => UserScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Profile"),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
