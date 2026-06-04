class Cat {
  final String id;
  final String imageUrl;
  final int? width;
  final int? height;

  Cat({
    required this.id,
    required this.imageUrl,
    this.width,
    this.height,
  });
}
