import 'package:flutter/material.dart';

import 'package:shopping_list/models/category.dart';

const categories = {
  Categories.vegetables: ProductCategory(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
  ),
  Categories.fruit: ProductCategory(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
  ),
  Categories.meat: ProductCategory(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
  ),
  Categories.dairy: ProductCategory(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
  ),
  Categories.carbs: ProductCategory(
    'Carbs',
    Color.fromARGB(255, 0, 60, 255),
  ),
  Categories.sweets: ProductCategory(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
  ),
  Categories.spices: ProductCategory(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
  ),
  Categories.convenience: ProductCategory(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
  ),
  Categories.hygiene: ProductCategory(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
  ),
  Categories.other: ProductCategory(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
  ),
};