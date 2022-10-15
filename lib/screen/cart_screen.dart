import 'package:flutter/material.dart';
import 'package:shop_easy/component/details_page_bottom_bar.dart';
import 'package:shop_easy/component/quantity_widget.dart';
import 'package:shop_easy/utils/style.dart';
class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,

          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Cart",style: productNameStyle,),
              sizedBox15,
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 15,
                    itemBuilder: (context, index){
                      return Container(
                        margin: EdgeInsets.only(left: 20,right: 20,bottom: 15),
                        padding: EdgeInsets.all(10),
                        height: size.height/7.5,
                        decoration:  BoxDecoration(
                            color: const Color(0xFFF5F9FD),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                // offset: Offset(2,2)
                              ),
                              BoxShadow(
                                color: const Color(0xFF475269).withOpacity(0.3),
                                blurRadius: 5,
                                spreadRadius: 1,
                                // offset: Offset(-2,-2)
                              )
                            ]
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: size.width/4.5,
                              color: Colors.black45,
                            ),
                            SizedBox(width: 25,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Product Name Product Name Product Name Product Name Product Name Product Name",
                                  style: productNameStyle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Quantity()
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: Icon(Icons.delete_rounded,
                                  size: 40,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Text("Price",
                                  style: priceTextStyle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                    ),
              ),
            ],
          ),

        ),
      ),
      bottomNavigationBar: Container(
        height: size.height/4.3,
        width: size.width,
        decoration:  BoxDecoration(
            color: const Color(0xfff5f9fd),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
                // offset: Offset(2,2)
              ),
              BoxShadow(
                color: const Color(0xFF475269).withOpacity(0.3),
                blurRadius: 5,
                spreadRadius: 1,
                // offset: Offset(-2,-2)
              )
            ]
        ),
        child: Column(
          children: [
           Container(
             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
             height: size.height/7,
             // margin: EdgeInsets.only(left: 20,right: 20,top: 15,),
             // color: Colors.blueAccent,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text("Sub-Total: "),
                     Text("100")
                   ],
                 ),
                 const Divider(thickness: 1,color: Colors.black45,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text("Delivery-Fee: "),
                     Text("10")
                   ],
                 ),
                 const Divider(thickness: 1,color: Colors.black45,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: const [
                     Text("Discount: "),
                     Text("15")
                   ],
                 ),

               ],
             ),
           ),
            Container(
              height: size.height/12,
              // color: Colors.purpleAccent,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              // padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    // color: Colors.cyanAccent,
                    height: size.height/15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Total: ",
                        style: productNameStyle,
                        ),
                        Text("100 ",
                          style: priceTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: size.height/15,
                    padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                        color: const Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF475269).withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ]
                    ),
                    child: Row(
                      children: const [
                        Text("Check Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_circle_right_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
