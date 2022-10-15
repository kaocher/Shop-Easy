import 'package:flutter/material.dart';
import 'package:shop_easy/component/single_product.dart';

import '../model/product_model.dart';
import '../utils/style.dart';
class SingleSubCatProduct extends StatelessWidget {
  final ProductModel productModel;
  const SingleSubCatProduct({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final size= MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/2.7,
      width: size.width/3.5,
      child: Card(
        color: Colors.amberAccent,
        shadowColor: Colors.black,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height/4.5,
                color: Colors.purpleAccent,

              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${productModel.title}",
                    style: headerStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("${productModel.desc}",
                    // style: headerStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text("${productModel.price}",
                    style: headerStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
