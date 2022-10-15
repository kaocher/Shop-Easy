
class CategoryModel{
  String? image;
  String? title;
  String? id;

  CategoryModel({required this.image,required this.title, required this.id});

  CategoryModel.fromJson(Map<String, dynamic> map){
    image= map['image'];
    title= map['title'];
    id= map['id'];

  }
}