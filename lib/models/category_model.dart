import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(name: "smoothie", imageUrl: 'https://picsum.photos/400'),
    Category(name: "smoothie", imageUrl: 'https://picsum.photos/400'),
    Category(name: "smoothie", imageUrl: 'https://picsum.photos/400'),
    Category(name: "smoothie", imageUrl: 'https://picsum.photos/400'),
    Category(name: "smoothie", imageUrl: 'https://picsum.photos/400'),
  ];
}
