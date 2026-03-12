import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirestoreProduct {
  final String id;
  final String title;
  final double price;
  final String category;
  final String description;
  final double rating;
  final int ratingCount;
  final Timestamp createdAt;

  FirestoreProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.rating,
    required this.ratingCount,
    required this.createdAt,
  });

  factory FirestoreProduct.fromJson(Map<String, dynamic> json, String docId) {
    return FirestoreProduct(
      id: docId,
      title: json['title'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      category: json['category'] ?? 'general',
      description: json['description'] ?? '',
      rating: (json['rating']?['rate'] ?? 0).toDouble(),
      ratingCount: (json['rating']?['count'] ?? 0),
      createdAt: json['createdAt'] ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'category': category,

      'description': description,
      'rating': {'rate': rating, 'count': ratingCount},
      'createdAt': createdAt,
    };
  }
}

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
