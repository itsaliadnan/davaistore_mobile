import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllProductsSection extends StatelessWidget {
  const AllProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "name": "Product 1",
        "price": "\$20",
        "icon": "assets/icons/All Products.svg",
      },
      {
        "name": "Product 2",
        "price": "\$35",
        "icon": "assets/icons/All Products.svg",
      },
      {
        "name": "Product 3",
        "price": "\$50",
        "icon": "assets/icons/All Products.svg",
      },
      {
        "name": "Product 4",
        "price": "\$15",
        "icon": "assets/icons/All Products.svg",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "All Products",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // شبكة المنتجات
        GridView.builder(
          shrinkWrap: true, // مهم عشان يشتغل داخل ScrollView
          physics: const NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // عمودين
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 3 / 4, // نسبة العرض للطول
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(product["icon"]!, width: 60, height: 60),
                  const SizedBox(height: 8),
                  Text(
                    product["name"]!,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product["price"]!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
