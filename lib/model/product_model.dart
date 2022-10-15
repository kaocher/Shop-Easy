
class ProductModel{
  String? image;
  String? title;
  String? desc;
  String? id;
  int? price;

  ProductModel({
    required this.image,
    required this.title,
    required this.id,
    required this.desc,
    required this.price,
  });

   ProductModel.fromJson(Map<String, dynamic> map){
    image= map['image'];
    title= map['title'];
    id= map['id'];
    desc= map['desc'];
    price= map['price'];
  }
}