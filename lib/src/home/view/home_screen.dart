import 'package:davaistore_mobile/src/home/components/all_products.dart';
import 'package:davaistore_mobile/src/home/components/best_sellers.dart';
import 'package:davaistore_mobile/src/home/components/browse_list.dart';
import 'package:davaistore_mobile/src/home/components/new_arrival.dart';
import 'package:davaistore_mobile/src/home/components/search_bar..dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarWidget(
                hintText: 'Search products...',
                controller: searchController,
                onChanged: (value) {
                  print('Search query: $value');
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Browse by Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BrowseByCategory(),
              SizedBox(height: 16),
              Carousel3D(),
              SizedBox(height: 16),
              BestSellers(),
              const SizedBox(height: 16),
              AllProductsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
