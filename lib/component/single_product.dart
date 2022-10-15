import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/model/product_model.dart';
import 'package:shop_easy/screen/product_details_screen.dart';

import '../utils/style.dart';
class SingleProduct extends StatelessWidget {
 final ProductModel productModel;
  const SingleProduct({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return  Padding(
      padding: const EdgeInsets.all(5),
      child: SizedBox(
        height: size.height/3,
        width: size.width/2.1,
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF5F9FD),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: size.height/4.5,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage("${productModel.image}"),
                          fit: BoxFit.contain,
                      ),
                  ),
                ),
                const SizedBox(height: 5,),
                Container(
                  height: size.height/12,
                  width: double.infinity,
                  // color: Colors.amberAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${productModel.title}",
                        style: productNameStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text("${productModel.desc}",
                        overflow: TextOverflow.ellipsis,
                        style: descTextStyle,
                        maxLines: 1,
                      ),
                      Text("${productModel.price}",
                        style: priceTextStyle,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

