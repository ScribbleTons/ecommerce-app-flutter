import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final bool isPopular;
  final bool isRecommended;
  final double price;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.isPopular,
      required this.isRecommended,
      required this.price});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, isPopular, isRecommended];

  static List<Product> products = [
    Product(
        name: "Honda 1",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: true,
        isRecommended: true,
        price: 5.03),
    Product(
        name: "Honda 3",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: true,
        isRecommended: false,
        price: 43.0),
    Product(
        name: "Haudia",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: false,
        isRecommended: false,
        price: 53.2),
    Product(
        name: "Toyota",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: true,
        isRecommended: false,
        price: 23.2),
    Product(
        name: "Camry",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: true,
        isRecommended: true,
        price: 203.2),
    Product(
        name: "Honda 1",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: false,
        isRecommended: false,
        price: 27.2),
    Product(
        name: "Boxer",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: false,
        isRecommended: true,
        price: 66.2),
    Product(
        name: "G-Wagon",
        category: "Luxury cars",
        imageUrl: "https://picsum.photos/400",
        isPopular: true,
        isRecommended: true,
        price: 267.2),
  ];
}
