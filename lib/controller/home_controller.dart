import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shop_easy/model/banner_model.dart';
import 'package:shop_easy/model/category_model.dart';
import 'package:shop_easy/model/product_model.dart';


class HomeController extends GetxController{

  FirebaseFirestore firestore= FirebaseFirestore.instance;
  bool isLoading= true;

  List<BannerModel> bannerData= [];
  List<CategoryModel> categoryData= [];
  List<ProductModel> featuredData= [];

  Future<void> getFeaturedData()async{
    await firestore.collection('featured').get().then((value) {
      featuredData=value.docs.map((e) => ProductModel.fromJson(e.data())).toList();
      return featuredData;

    });
    isLoading=false;
    update();
    print(featuredData.length);
  }

  Future<void> getBannerData()async{
    await firestore.collection('banner').get().then((value) {
      bannerData=value.docs.map((e) => BannerModel.fromJson(e.data())).toList();
      return bannerData;

    });
    isLoading=false;
    update();
    print(bannerData.length);
  }

  Future<void> getCategoryData()async{
    await firestore.collection('categories').get().then((value) {
      categoryData=value.docs.map((e) => CategoryModel.fromJson(e.data())).toList();
      return categoryData;

    });
    isLoading=false;
    update();
    print(categoryData.length);
  }
  @override
  void onInit() {
    getFeaturedData();
    getBannerData();
    getCategoryData();
    super.onInit();
  }
}
