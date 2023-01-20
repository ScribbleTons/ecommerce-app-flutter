import 'package:flutter/material.dart';
import 'package:initial_flutter_app/models/category_model.dart';
import 'package:initial_flutter_app/screens/cart/cart_screen.dart';
import 'package:initial_flutter_app/screens/catalog/catalog_screen.dart';
import 'package:initial_flutter_app/screens/home/home.dart';
import 'package:initial_flutter_app/screens/product/product_screen.dart';
import 'package:initial_flutter_app/screens/user/user_screen.dart';
import 'package:initial_flutter_app/screens/wishlist/wishlist_screen.dart';




class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case UserScreen.routeName:
        return UserScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductScreen.routeName:
        return ProductScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(appBar: AppBar(title: const Text("Error"))),
        settings: const RouteSettings(name: '/'));
  }
}
