import 'package:flutter/material.dart';
import 'package:shop_easy/utils/style.dart';
import 'package:shop_easy/utils/dimension.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(

        child: Center(
          child: Row(
            children: [
              SizedBox(width: 10,),
              Container(
                height: 45,
                width: 45,

                color: Colors.blueAccent,
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(8),
               child: Icon(Icons.add_circle_outline,
               size: 30,),
                color: Colors.cyanAccent,
              ),
              SizedBox(width: 10,),
              Container(
                height: size.height/21,
                width: size.height/21,
                color: Colors.redAccent,
                child: Icon(Icons.add_circle_outline,
                  size: Dimensions.iconSize,
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
