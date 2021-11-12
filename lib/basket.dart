import 'package:flutter/material.dart';
import 'package:foodapplication/product/product_in_order.dart';
import 'package:foodapplication/shop/shop.dart';

class CartModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  CartModel() {}
  final List<ProductInOrder> items = [];
  late Shop shop;

  void add(ProductInOrder item) {
    items.add(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void setShop(Shop s) {
    shop = s;
  }

  ProductInOrder getFirst() {
    return items[0];
  }

  /// Removes all items from the cart.
  void removeAll() {
    items.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
