import 'package:flutter/material.dart';
import 'package:shop_easy/component/single_product.dart';
import 'package:shop_easy/utils/style.dart';

import '../model/product_model.dart';
class HomeProductGridScreen extends StatelessWidget {
  final String title;
  final List<ProductModel> data;
  const HomeProductGridScreen({Key? key,required this.title,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                style: headerStyle,),
                const SizedBox(height: 10,),
                Expanded(
                  child: GridView.builder(
                    itemCount: data.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        childAspectRatio: .63,
                        mainAxisSpacing: 0,
                        crossAxisSpacing: 0
                      ),
                      itemBuilder: (context, index){
                        return SingleProduct(productModel: data[index]);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
