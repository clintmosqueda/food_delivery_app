import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff0262626),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: Color(0xff0262626),
            ),
            title: Text('favourites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Color(0xff0262626),
            ),
            title: Text('Shpping Cart'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff0262626),
            ),
            title: Text('My Profile'),
          ),
        ],
      ),
    );
  }
}
