import 'package:flutter/material.dart';
import 'package:lab08_task3/controllers/product_controller.dart';
import 'package:lab08_task3/models/product_model.dart';
import 'package:get/get.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.find();

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffF8F8F8),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.33),
                ),
                child: Text(
                  '${product.sale}% OFF',
                  style: const TextStyle(fontSize: 10),
                ),
              ),
              IconButton(
                onPressed: () => controller.addToCart(product),
                icon: const Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
          Image.asset(
            product.imagePath,
            height: 120,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 10),
          Text(
            product.name,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.discountedPrice}',
                style: const TextStyle(
                  fontSize: 12.3,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                '\$${product.originalPrice}',
                style: const TextStyle(
                  fontSize: 10,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAFAFAF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
