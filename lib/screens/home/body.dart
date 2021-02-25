import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/popular_food.dart';
import 'package:food_delivery_app/components/restaurant_category.dart';
import 'package:food_delivery_app/components/special_offer.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 30.0,
                ),
                child: Icon(Icons.menu),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              bottom: 30.0,
            ),
            child: RestaurantCategory(),
          ),
          PopularFood(),
          SizedBox(
            height: 30.0,
          ),
          SpecialOffer(),
        ],
      ),
    );
  }
}
