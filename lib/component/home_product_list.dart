
import 'package:flutter/material.dart';
import 'package:shop_easy/component/single_product.dart';
import 'package:shop_easy/model/product_model.dart';

class HomeProduct extends StatelessWidget {
  final List<ProductModel> data;
  const HomeProduct({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Container(
      height: size.height/2.8,
      width: double.infinity,
      padding: EdgeInsets.only(left: 10,right: 5),
      child: ListView.builder(
        physics: const PageScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return SingleProduct(productModel: data[index]);
          }
      ),
    );
  }
}