
class BannerModel{
  String? image;

  BannerModel({required this.image});

  BannerModel.fromJson(Map<String, dynamic> map){
    image= map['image'];

  }
}