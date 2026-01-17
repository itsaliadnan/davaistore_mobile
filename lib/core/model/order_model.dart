class OrderModel {
  final String id;
  final String productName;
  final double price;
  final String image;
  final String status;
  final DateTime date;

  OrderModel({
    required this.id,
    required this.productName,
    required this.price,
    required this.image,
    required this.status,
    required this.date,
  });
}
