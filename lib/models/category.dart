import 'package:flutter/material.dart';

enum Categories {
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other,
}

class ProductCategory {
  final String title;
  final Color color;

  const ProductCategory(this.title, this.color);
}
