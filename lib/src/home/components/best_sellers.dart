import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/localization/strings.g.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  final List<FirestoreProduct> products;

  const BestSellers({super.key, required this.products});

  // Card بلون برتقالي عادي
  Widget orangeCard({
    required BuildContext context,
    required Widget child,
    double radius = 20,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppGradients.twilightViolet,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Center(child: Text(context.t.home.noProductsFound));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            context.t.home.bestSellers,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return orangeCard(
              context: context,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   height: 100,
                    //   padding: const EdgeInsets.all(8),
                    //   child: Image.network(
                    //     product.image,
                    //     fit: BoxFit.contain,
                    //     errorBuilder: (context, error, stackTrace) =>
                    //         const Icon(Icons.broken_image),
                    //   ),
                    // ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        product.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$${product.price}',
                      style: TextStyle(
                        color: context.colorScheme.onSurface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
