import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/model/category_model.dart';
import '../screen/product_gridView_screen.dart';
import '../utils/style.dart';

class Categories extends StatelessWidget {
  final List<CategoryModel> data;


  const Categories({Key? key,required this.data,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return SizedBox(
      height: size.height/7.8,
      width: size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        // itemExtent: size.height/8,
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
          itemBuilder: (context, index) {
           return singleCategory(size, categoryModel: data[index]);
          }
      ),
    );
  }
}

Widget singleCategory(Size size, {required CategoryModel categoryModel}) {
  return GestureDetector(
    onTap: (){
      Get.to(()=>ProductScreen(
          categoryId: "${categoryModel.id}",
          categoryTitle: "${categoryModel.title}"));
    },
    child: Container(
      // color: Colors.deepOrange,
     margin: const EdgeInsets.only(right: 20,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFFF5F9FD),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF475269).withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage("${categoryModel.image}",),
            ),
          ),
          Text("${categoryModel.title}",
            style: productNameStyle,
          )
        ],
      ),
    ),
  );
}
// void categoryNavigation(BuildContext context,CategoryModel categoryModel) {
//
//   final ProductController productController= Get.put(ProductController());
//
//   if (categoryModel.title=="Phone"){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
//       data: [],
//       categoryTitle: "Phone",
//     )));
//
//   }else if(categoryModel.title=="Watch"){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
//       data: productController.watchData,
//       categoryTitle: "Watch",
//     )));
//
//   }else if(categoryModel.title=="PC"){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
//       data: [],
//       categoryTitle: "PC",
//     )));
//
//   }else if(categoryModel.title=="Laptop"){
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
//       data: productController.laptopData,
//       categoryTitle: "Laptop",
//     )));
//   }else{
//
//   }
// }