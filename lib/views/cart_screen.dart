import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab08_task3/controllers/product_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: Obx(() {
        if (controller.cart.isEmpty) {
          return const Center(child: Text('Cart is Empty'));
        }
        return ListView.builder(
          itemCount: controller.cart.length,
          itemBuilder: (context, index) {
            final product = controller.cart[index];
            return ListTile(
              leading: Image.asset(product.imagePath, height: 50, width: 50),
              title: Text(product.name),
              subtitle: Text('\$${product.discountedPrice}'),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle),
                onPressed: () => controller.removeFromCart(product),
              ),
            );
          },
        );
      }),
    );
  }
}
