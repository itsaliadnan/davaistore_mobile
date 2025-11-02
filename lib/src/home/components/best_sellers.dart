import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:davaistore_mobile/src/home/components/product_card.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  BestSellers({super.key});

  final List<Product> products = [
    Product(
      name: "Shoes",
      imagePath: "assets/icons/Clearance Sale.svg",
      price: 59.99,
    ),
    Product(name: "Bag", imagePath: "assets/icons/bag.svg", price: 39.99),
    Product(name: "Watch", imagePath: "assets/icons/watch.svg", price: 79.99),
    Product(name: "Hat", imagePath: "assets/icons/hat.svg", price: 19.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "Best Sellers",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عمودين
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              name: product.name,
              imagePath: product.imagePath,
              price: product.price,
              onTap: () {
                print("Clicked on ${product.name}");
              },
            );
          },
        ),
      ],
    );
  }
}
