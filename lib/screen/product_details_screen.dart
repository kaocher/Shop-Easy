import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/component/quantity_widget.dart';
import 'package:shop_easy/model/product_model.dart';
import 'package:shop_easy/utils/style.dart';

import '../component/details_page_bottom_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductModel data;
   ProductDetailsScreen({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Icon(Icons.arrow_back,
                      size: 30,
                        color: Color(0xFF475269),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF5F9FD),
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF475269).withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ]),
                      child: const Icon(Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              alignment: Alignment.center,
              height: size.height/3,
              width: double.infinity,
              child:  Image.network("${data.image}",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: size.height/2,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F9FD),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.4),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${data.title}",
                      style: headerStyle,
                      ),
                      const Quantity()
                    ],
                  ),
                  sizedBox5,
                  Text("\$${data.price}",
                    style: priceTextStyle,
                  ),
                  SizedBox(height: 10,),
                  Text("${data.desc}",
                      style: descTextStyle,
                      textAlign: TextAlign.justify,

                    ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Size: ",
                        style: headerStyle,
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          for(int i=5; i<10; i++)
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                             decoration: BoxDecoration(
                               color: Color(0xFFF5F9FD),
                               borderRadius:BorderRadius.circular(15),
                               boxShadow: [
                                 BoxShadow(
                                   color: const Color(0xFF475269).withOpacity(0.3),
                                   blurRadius: 5,
                                   spreadRadius: 1,
                                 ),
                               ]
                             ),
                              child: Text(i.toString()),
                            ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: DetailsPageBottomBar(),
    );
  }
}
