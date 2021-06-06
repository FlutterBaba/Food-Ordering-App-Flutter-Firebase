import 'package:flutter/cupertino.dart';

class CartModle {
  final String image;
  final String name;
  final int price;
  final int quantity;

  CartModle({
    @required this.image,
    @required this.name,
    @required this.price,
    @required this.quantity,
  });
}
