import 'package:flutter/material.dart';
import 'package:shop_easy/utils/style.dart';

class DetailsPageBottomBar extends StatelessWidget {
  const DetailsPageBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF5F9FD),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 65,
            padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]
            ),
            child: Row(
              children: const [
                Text("Add To Cart",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding:  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
                color: const Color(0xFF475269),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
            ),
            child: Icon(
              Icons.shopping_bag,
              color: Colors.white,
              size: 45,
            ),
          ),
        ],
      ),
    );
  }
}
