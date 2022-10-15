import 'package:flutter/material.dart';
import 'package:shop_easy/utils/dimension.dart';
class IconWidget extends StatelessWidget {
  IconData icon;
  double? height;
  double? width;
  Color color;
  Color iconColor;
  VoidCallback onPress;

  IconWidget({
    required this.icon,
    this.height,
    this.width,
    this.color= const Color(0xFFF5F9FD),
    this.iconColor= Colors.black,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: Container(
          height: height,
          width: width,
          alignment: Alignment.center,
          // margin: EdgeInsets.only(right: 0),
          decoration: BoxDecoration(
              color: color,
              borderRadius:BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF475269).withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ]
          ),
          child: Icon(
            icon,

          )
      ),
    );
  }
}
