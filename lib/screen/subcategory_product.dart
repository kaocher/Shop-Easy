import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/product_controller.dart';
import '../model/product_model.dart';
import '../utils/style.dart';
class SubCategoryProduct extends StatelessWidget {
  // final List<ProductModel> data;
  const SubCategoryProduct({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    final controller= Get.put(ProductController());
    return SafeArea(
        child: GetBuilder<ProductController>(builder: (value){
          if (value.isLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return Scaffold(
              body: GridView.builder(
                itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index){
                    return  SizedBox(
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
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(""),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("",
                                    style: headerStyle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text("",
                                    // style: headerStyle,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text("",
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
                  }),
            );
          }
        })
    );
  }
}
