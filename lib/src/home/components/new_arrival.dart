import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';

class InfiniteCarousel3D extends StatefulWidget {
  final List<ProductModel> products;

  const InfiniteCarousel3D({super.key, required this.products});

  @override
  State<InfiniteCarousel3D> createState() => _InfiniteCarousel3DState();
}

class _InfiniteCarousel3DState extends State<InfiniteCarousel3D> {
  late final PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    currentPage = widget.products.length * 1000;
    _pageController = PageController(
      viewportFraction: 0.6,
      initialPage: currentPage,
    );
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  // Glassmorphic Card
  Widget glassCard({required Widget child, double radius = 20}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: BoxDecoration(
            gradient: GlassGradients.goldGradient,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final products = widget.products;
    if (products.isEmpty) {
      return const Center(child: Text("No products for carousel"));
    }

    return SizedBox(
      height: 280,
      child: PageView.builder(
        controller: _pageController,
        itemBuilder: (context, index) {
          final product = products[index % products.length];
          double scale = currentPage == index ? 1.0 : 0.8;
          double angle = currentPage == index ? 0 : 0.05;

          return TweenAnimationBuilder(
            tween: Tween(begin: scale, end: scale),
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeOut,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Transform.rotate(
                  angle: currentPage == index
                      ? 0
                      : (index < currentPage ? angle : -angle),
                  child: child,
                ),
              );
            },
            child: glassCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 140,
                    padding: const EdgeInsets.all(12),
                    child: Image.network(
                      product.image,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      product.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
