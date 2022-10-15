import 'package:flutter/material.dart';
import 'package:shop_easy/component/banner.dart';
import 'package:shop_easy/component/categories.dart';
import 'package:shop_easy/component/home_product_list.dart';
import 'package:shop_easy/component/text_and_button.dart';
import 'package:shop_easy/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:shop_easy/screen/home_product_gridview_screen.dart';
import 'package:shop_easy/utils/style.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    HomeController controller= Get.put(HomeController());
    return SafeArea(
      child: GetBuilder<HomeController>(builder: (value){
        if (value.isLoading){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }else{
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("SHOP EASY",
              style: headerStyle,
              ),
              centerTitle: true,
            ),
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeBanner(data: controller.bannerData),
                  sizedBox10,
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: headerText(inputText: "Categories"),
                  ),
                  sizedBox10,
                  Categories(data: controller.categoryData,),
                  const SizedBox(height: 15,),
                  textAndButton(
                      title: "Featured",
                      onPress: () {
                        Get.to(()=>HomeProductGridScreen(
                          data: controller.featuredData,
                          title: "Featured",
                        ),
                        transition: Transition.leftToRight,
                          duration: const Duration(milliseconds: 400)
                        );
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeProductGridScreen(
                       //   data: controller.featuredData,
                       //   title: "Featured",
                       // )));
                      }
                  ),
                  sizedBox5,
                  HomeProduct(data: controller.featuredData),
                  sizedBox15,
                  textAndButton(
                      title: "New Arrived",
                  onPress: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
                    //   data: controller.featuredData,
                    //   categoryTitle: "New Arrived",
                    // )));
                  }
                  ),
                  sizedBox5,
                  HomeProduct(data: controller.featuredData),
                ],
              ),
              ),
            )
          );
        }
      }),
    );
  }
}
