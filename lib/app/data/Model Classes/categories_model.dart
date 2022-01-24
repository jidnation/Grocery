import 'package:flutter/material.dart';

class Category {
  final String? name;
  final String? image;
  final String? view;
  final String? color;

  Category(
      {required this.color,
      required this.view,
      required this.name,
      required this.image});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        name: json['name'],
        color: json['color'],
        view: json['view'],
        image: json['image']);
  }
}

class CategoriesList {
  final List<Category> container;

  CategoriesList({required this.container});

  factory CategoriesList.fromJson(List<dynamic> parsedJson) {
    List<Category> _container = <Category>[];

    _container = parsedJson.map((data) => Category.fromJson(data)).toList();

    return CategoriesList(container: _container);
  }
}

/*    Storing the categories Colors here    */
final Map<String, Color> colorContainer = {
  "fruit": Color(0xffedd0ff),
  "cakes": Color(0xfffeca97),
  "fish": Color(0xfffbc1bd),
  "hand wash": Color(0xffd6fae9),
  "egg & milk": Color(0xffdaf2fc),
  "ice cream": Color(0xffffdef6),
  "meat": Color(0xfffacccc),
  "juices": Color(0xffd3e5c4),
  "sea food": Color(0xffffe299),
  "vegetables": Color(0xffffd9ba),
  "wine": Color(0xffffc0c0),
};
