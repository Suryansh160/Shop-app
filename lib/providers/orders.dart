import 'package:flutter/material.dart';

import 'cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {required this.amount,
      required this.dateTime,
      required this.id,
      required this.products});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProduct, double total) {
    _orders.insert(
      0,
      OrderItem(
        amount: total,
        dateTime: DateTime.now(),
        id: DateTime.now().toString(),
        products: cartProduct,
      ),
    );
    notifyListeners();
  }
}
