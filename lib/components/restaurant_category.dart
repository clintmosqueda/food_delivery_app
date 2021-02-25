import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/category.dart';

class RestaurantCategory extends StatelessWidget {
  var categories = [
    Category(title: 'Noodles', icon: Icons.ramen_dining),
    Category(title: 'Meat', icon: Icons.restaurant),
    Category(title: 'fish', icon: Icons.set_meal),
    Category(title: 'Chicken', icon: Icons.restaurant),
    Category(title: 'Beef', icon: Icons.restaurant),
    Category(title: 'Pizza', icon: Icons.local_pizza),
    Category(title: 'Burgers', icon: Icons.lunch_dining),
    Category(title: 'Salad', icon: Icons.restaurant),
    Category(title: 'Cakes', icon: Icons.cake),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return categories[index];
        },
      ),
    );
  }
}
