import 'package:auto_route/auto_route.dart';
import 'package:davaistore_mobile/core/model/order_model.dart';
import 'package:davaistore_mobile/src/order/view/order_details_screen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrdersScreen extends StatelessWidget {
  OrdersScreen({super.key});

  final List<OrderModel> orders = [
    OrderModel(
      id: "ORD-001",
      productName: "Nike Shoes",
      price: 120,
      image: "https://via.placeholder.com/150",
      status: "Processing",
      date: DateTime.now(),
    ),
    OrderModel(
      id: "ORD-002",
      productName: "Smart Watch",
      price: 80,
      image: "https://via.placeholder.com/150",
      status: "Shipped",
      date: DateTime.now(),
    ),
  ];

  Color statusColor(String status) {
    switch (status) {
      case "Processing":
        return Colors.orange;
      case "Shipped":
        return Colors.blue;
      case "Completed":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Orders"), centerTitle: true),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ListTile(
              leading: Image.network(order.image, width: 50),
              title: Text(order.productName),
              subtitle: Text("Order ID: ${order.id}"),
              trailing: Chip(
                label: Text(order.status),
                backgroundColor: statusColor(order.status).withOpacity(0.15),
                labelStyle: TextStyle(
                  color: statusColor(order.status),
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => OrderDetailsScreen(order: order),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
