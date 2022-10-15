import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../model/product_model.dart';

class ProductController extends GetxController{

  FirebaseFirestore firestore= FirebaseFirestore.instance;
  String categoryId= "";
  String categoryTitle= "";
  List<ProductModel> productData=[];
  bool isLoading= true;

  // List<ProductModel> watchData= [];
  // List<ProductModel> laptopData= [];

  Future<void> getSubCategoryData() async {
    try{
      await firestore
          .collection('categories')
          .doc(categoryId)
          .collection(categoryTitle)
          .get()
          .then((value) {
            productData = value.docs.map((e) => ProductModel.fromJson(e.data())).toList();

            isLoading= false;
            update();
            print(productData.length);
      });
    }catch(e){
      print(e);
    }
  }

  // Future<void> getWatchData()async{
  //   await firestore.collection('categories').doc("JQgINfy9e0fDS66uPKpZ").collection('Watch').get().then((value) {
  //     watchData=value.docs.map((e) => ProductModel.fromJson(e.data())).toList();
  //     return watchData;
  //
  //   });
  //   isLoading=false;
  //   update();
  //   print(watchData.length);
  // }

  // Future<void> getLaptopData()async{
  //   await firestore.collection('categories').doc("oiOEYWstZq532Mo8DWpU").collection('Laptop').get().then((value) {
  //     laptopData=value.docs.map((e) => ProductModel.fromJson(e.data())).toList();
  //     return laptopData;
  //
  //   });
  //   isLoading=false;
  //   update();
  //   print(laptopData.length);
  // }
@override
  void onInit() {
    // TODO: implement onInit
  getSubCategoryData();
    super.onInit();
  }
}