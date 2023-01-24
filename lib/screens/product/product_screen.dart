import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:initial_flutter_app/models/product_model.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key, required this.product}) : super(key: key);

  //set route name
  static const String routeName = '/product';

  // implement the routing method
  static Route route({required Product product}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ProductScreen(product: product));
  }

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      "ADD TO CART",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(color: Colors.black),
                    ))
              ],
            ),
          )),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              viewportFraction: 0.9,
            ),
            items: [HeroCarouselCard(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.black.withAlpha(50),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width - 10,
                    height: 50,
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Row(
                children: [
                  Container(
                    width: 50,
                    height: 60,
                    color: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Product Information",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
              children: [
                ListTile(
                    title: Text(
                  "Laborum magna in consequat eiusmod consequat ea aliquip elit eu dolor consequat et qui. Enim veniam consectetur laborum irure dolor cillum magna velit nostrud pariatur. Ipsum dolore adipisicing veniam veniam dolor. Culpa nulla exercitation tempor id ipsum in dolore nostrud quis ullamco elit consequat tempor. Labore velit qui anim est sunt nisi. Labore culpa eiusmod cillum magna et. Eu eu commodo occaecat labore.",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w300),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              title: Text(
                "Delivery Information",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              children: [
                ListTile(
                    title: Text(
                  "Laborum magna in consequat eiusmod consequat ea aliquip elit eu dolor consequat et qui. Enim veniam consectetur laborum irure dolor cillum magna velit nostrud pariatur. Ipsum dolore adipisicing veniam veniam dolor. Culpa nulla exercitation tempor id ipsum in dolore nostrud quis ullamco elit consequat tempor. Labore velit qui anim est sunt nisi. Labore culpa eiusmod cillum magna et. Eu eu commodo occaecat labore.",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w300),
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
