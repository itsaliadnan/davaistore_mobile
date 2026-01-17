import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/api/product_api.dart';
import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:davaistore_mobile/src/home/components/all_products.dart';
import 'package:davaistore_mobile/src/home/components/best_sellers.dart';
import 'package:davaistore_mobile/src/home/components/browse_list.dart';
import 'package:davaistore_mobile/src/home/components/new_arrival.dart';
import 'package:davaistore_mobile/src/home/components/search_bar..dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productsProvider = FutureProvider<List<ProductModel>>((ref) async {
  final productApi = ref.read(productApiProvider);
  return await productApi.getProducts();
});

@RoutePage()
class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => context.pushNamed('login'),
        ),
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarWidget(
                hintText: 'Search products...',
                controller: searchController,
                onChanged: (value) => print('Search query: $value'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Browse by Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BrowseByCategory(),
              const SizedBox(height: 16),
              productsAsync.when(
                data: (products) => InfiniteCarousel3D(products: products),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),
              const SizedBox(height: 16),

              productsAsync.when(
                data: (products) {
                  if (products.isEmpty) {
                    return const Center(child: Text("No products found"));
                  }
                  return BestSellers(products: products);
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),

              const SizedBox(height: 16),

              productsAsync.when(
                data: (products) => AllProductsSection(products: products),
                loading: () => const SizedBox.shrink(),
                error: (_, __) => const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
