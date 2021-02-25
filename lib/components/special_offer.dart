import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/popular_model.dart';

class SpecialOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 20.0,
            bottom: 25.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special Offers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: Color(0xff09b44d),
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'View All',
                    style: TextStyle(
                      color: Color(0xff09b44d),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 0,
            right: 0,
          ),
          child: Container(
            height: 260.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: populars.length,
              itemBuilder: (BuildContext context, int index) {
                Popular popular = populars[index];
                return Container(
                  width: 250.0,
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          // height: 180.0,
                          width: double.infinity,
                          image: AssetImage(popular.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 0.3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 15.0,
                        ),
                        child: Column(
                          // same as css justify-content
                          mainAxisAlignment: MainAxisAlignment.end,
                          //same as css align-items
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popular.title,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            SizedBox(
                              child: Container(
                                child: Text(
                                  popular.description,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
