class ProductModel {
  final String name;
  final String imagePath;
  final double originalPrice;
  final double sale;

  ProductModel({
    required this.name,
    required this.imagePath,
    required this.originalPrice,
    required this.sale,
  });

  double get discountedPrice => originalPrice * (1 - sale / 100);
}
