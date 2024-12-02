import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab08_task3/models/product_model.dart';

class ProductController extends GetxController {
  final List<ProductModel> products = [
    ProductModel(
      name: 'Product 1',
      imagePath: 'assets/images/product01.png',
      originalPrice: 1000.0,
      sale: 10.0,
    ),
    ProductModel(
      name: 'Product 2',
      imagePath: 'assets/images/product02.png',
      originalPrice: 1500.0,
      sale: 15.0,
    ),
    ProductModel(
      name: 'Product 3',
      imagePath: 'assets/images/product03.png',
      originalPrice: 2000.0,
      sale: 20.0,
    ),
    ProductModel(
      name: 'Product 4',
      imagePath: 'assets/images/product04.png',
      originalPrice: 2500.0,
      sale: 25.0,
    ),
    ProductModel(
      name: 'Product 5',
      imagePath: 'assets/images/product05.png',
      originalPrice: 3000.0,
      sale: 30.0,
    ),
    ProductModel(
      name: 'Product 6',
      imagePath: 'assets/images/product06.png',
      originalPrice: 3500.0,
      sale: 35.0,
    ),
    ProductModel(
      name: 'Product 7',
      imagePath: 'assets/images/product07.png',
      originalPrice: 4000.0,
      sale: 40.0,
    ),
    ProductModel(
      name: 'Product 8',
      imagePath: 'assets/images/product08.png',
      originalPrice: 4500.0,
      sale: 45.0,
    ),
    ProductModel(
      name: 'Product 9',
      imagePath: 'assets/images/product09.png',
      originalPrice: 5000.0,
      sale: 50.0,
    ),
    ProductModel(
      name: 'Product 10',
      imagePath: 'assets/images/product10.png',
      originalPrice: 5500.0,
      sale: 55.0,
    ),
  ];

  final RxList<ProductModel> cart = <ProductModel>[].obs;

  void addToCart(ProductModel product) {
    cart.add(product);
    Get.snackbar(
      'Success',
      '${product.name} has been added to the cart!',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.7),
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
    update();
  }

  void removeFromCart(ProductModel product) {
    cart.remove(product);
    Get.snackbar(
      'Removed',
      '${product.name} has been removed from the cart.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent.withOpacity(0.7),
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
    update();
  }
}
