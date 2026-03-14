import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/src/home/components/product_card.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("All Products")),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: 20, // عدد المنتجات مؤقت
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return const ProductCard(name: '', imagePath: '', price: 12);
        },
      ),
    );
  }
}
