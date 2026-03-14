import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:davaistore_mobile/core/model/product_model.dart';
import 'package:davaistore_mobile/core/router/app_router.gr.dart';
import 'package:davaistore_mobile/core/theme/colors.dart';
import 'package:davaistore_mobile/localization/strings.g.dart';
import 'package:davaistore_mobile/src/home/components/all_products.dart';
import 'package:davaistore_mobile/src/home/components/best_sellers.dart';
import 'package:davaistore_mobile/src/home/components/browse_list.dart';
import 'package:davaistore_mobile/src/home/components/search_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productsProvider = StreamProvider<List<FirestoreProduct>>((ref) {
  return FirebaseFirestore.instance
      .collection('products')
      .orderBy('createdAt', descending: true)
      .snapshots()
      .map((snapshot) {
        return snapshot.docs
            .map((doc) => FirestoreProduct.fromJson(doc.data(), doc.id))
            .toList();
      });
});

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool isAdmin = false;
  @override
  void initState() {
    super.initState();
    checkAdmin();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  final TextEditingController searchController = TextEditingController();

  void checkAdmin() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final idTokenResult = await user.getIdTokenResult(true);

      if (idTokenResult.claims != null &&
          idTokenResult.claims!['admin'] == true) {
        setState(() {
          isAdmin = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final productsAsync = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.center,
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            width: 24,
            height: 24,
          ),
          onPressed: () => context.pushNamed('login'),
        ),

        title: SvgPicture.asset(
          'assets/icons/DavaiStore_logo.svg',
          colorFilter: ColorFilter.mode(
            context.colorScheme.primary,
            BlendMode.srcIn,
          ),
          height: 30,
          width: 30,
        ),
        centerTitle: true,
        actions: [
          if (isAdmin)
            IconButton(
              icon: const Icon(Icons.admin_panel_settings),
              onPressed: () {
                context.router.push(const AddProductRoute());
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SearchBarWidget(
                hintText: context.t.home.searchProduct,
                controller: searchController,
              ),
              const SizedBox(height: 16),
              Text(
                context.t.home.browseByCategory,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              BrowseByCategory(),
              const SizedBox(height: 16),
              productsAsync.when(
                data: (products) => ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ListTile(
                      title: Text(product.title),
                      subtitle: Text('${product.price} د.ع'),
                      // leading: Image.network(
                      //   product.image,
                      //   width: 50,
                      //   height: 50,
                      // ),
                    );
                  },
                ),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (err, stack) => Center(child: Text('Error: $err')),
              ),

              const SizedBox(height: 16),

              productsAsync.when(
                data: (products) {
                  if (products.isEmpty) {
                    return Center(child: Text(context.t.home.noProductsFound));
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
