

class ProductModel {

  final String name;
  final String image;

  const ProductModel({
    required this.name,
    required this.image
  });

  static const List<ProductModel> productList = [
    ProductModel(
        name: 'Vitamin D3',
        image: 'assets/images/viatmine.png',
    ),
    ProductModel(
      name: 'ahmed',
      image: 'assets/images/Vitamins & Supplement.png',
    ),
    ProductModel(
      name: 'muhammad',
      image: 'assets/images/Vitamins & Supplement.png',
    ),
    ProductModel(
      name: 'zaid',
      image: 'assets/images/Vitamins & Supplement.png',
    ),
    ProductModel(
      name: 'omar',
      image: 'assets/images/Vitamins & Supplement.png',
    ),
  ];

}