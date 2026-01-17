import 'package:davaistore_mobile/core/model/category_model.dart';
import 'package:davaistore_mobile/src/home/components/category_item.dart';
import 'package:flutter/material.dart';

class BrowseByCategory extends StatelessWidget {
  final List<Category> categories = [
    Category(name: 'Shoes', iconPath: 'assets/icons/shoes1.svg'),
    Category(name: 'Bags', iconPath: 'assets/icons/running.svg'),
    Category(name: 'Hats', iconPath: 'assets/icons/Running.svg'),
    Category(name: 'Watches', iconPath: 'assets/icons/Running.svg'),
  ];

  BrowseByCategory({super.key});

  // Card بلون برتقالي عادي
  Widget orangeCard({required Widget child, double radius = 20}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange, // 👈 اللون البرتقالي
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: categories.map((category) {
          return orangeCard(
            child: CategoryItem(
              name: category.name,
              iconPath: category.iconPath,
              onTap: () {
                print('Clicked on ${category.name}');
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
