import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String title;
  final IconData icon;

  Category({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xff0cdedd9),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Color(0xff0739a8a),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            this.title,
            style: TextStyle(
              color: Color(0xff0739a8a),
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
