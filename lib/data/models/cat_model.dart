import '../../domain/entities/cat.dart';

class CatModel extends Cat {
  CatModel({
    required super.id,
    required super.imageUrl,
    super.width,
    super.height,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) {
    return CatModel(
      id: json['id'],
      imageUrl: json['url'],
      width: json['width'],
      height: json['height'],
    );
  }
}
