import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/component/single_product.dart';
import 'package:shop_easy/controller/product_controller.dart';
import 'package:shop_easy/screen/product_details_screen.dart';
import 'package:shop_easy/utils/style.dart';


class ProductScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  ProductScreen(
      {Key? key, required this.categoryId, required this.categoryTitle})
      : super(key: key);

  final controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    controller.categoryId = categoryId;
    controller.categoryTitle = categoryTitle;
    controller.getSubCategoryData();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       icon: Icon(Icons.arrow_back)),
      // ),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<ProductController>(builder: (value) {
              if (value.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(categoryTitle, style: headerStyle),
                    ),
                    // const SizedBox(height: 10,),
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: .63,
                          mainAxisSpacing: 0,
                          crossAxisSpacing: 0,
                        ),
                        itemCount: value.productData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(()=> ProductDetailsScreen(
                                data: value.productData[index],
                              ));
                            },
                            child: SingleProduct(
                                productModel: value.productData[index]),
                          );
                        },
                    ),
                  ],
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}
