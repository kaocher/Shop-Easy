import 'package:flutter/material.dart';
import 'package:shop_easy/utils/style.dart';
Widget textAndButton({required String title, required VoidCallback onPress}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        headerText(inputText: title),
        GestureDetector(
          onTap: onPress,
            child: const Text("View More",
            style: textButtonStyle,
            ),
        )
      ],
    ),
  );
}
Widget headerText({required String inputText}){
  return Text(inputText,style: headerStyle,);
}