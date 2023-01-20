import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  // routing to '/catalog' from any screen push this component top the nav stack
  static const String routeName = '/catalog';

  // implement the routing method
  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  @override
  Widget build(BuildContext context) {
    List<Product> categoryProducts = Product.products
        .where((prod) => prod.category == category.name)
        .toList();

    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: CustomBottomNav(),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        itemCount: categoryProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.15),
        itemBuilder: (context, index) {
          if (categoryProducts.isEmpty) {
            return Text("No product available in this category",
                style: Theme.of(context).textTheme.headline4);
          }

          return Center(
              child: ProductCard(
            product: categoryProducts[index],
            widthFactor: 2.3,
          ));
        },
      ),
    );
  }
}
