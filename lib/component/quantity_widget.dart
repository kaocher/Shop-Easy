import 'package:flutter/material.dart';
class Quantity extends StatelessWidget {
  const Quantity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width/4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(

            height: size.height/25,
            width: size.width/12,
            alignment: Alignment.center,
            // margin: EdgeInsets.only(right: 0),
            decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius:BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ]
            ),
            child: Icon(Icons.remove_circle_outline,
              size:size.height/45,
            )
          ),
          Text("01",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18
          ),
          ),
          Container(

              height: size.height/25,
              width: size.width/12,
              alignment: Alignment.center,
              // margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F9FD),
                  borderRadius:BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF475269).withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ]
              ),
              child: Icon(Icons.add_circle_outline,
              size: size.height/45,
              )
          ),
        ],
      ),
    );
  }
}
