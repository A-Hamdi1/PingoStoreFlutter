class BrandModel {
  String id;
  String name;
  String image;
  bool? isFeatured;
  int? productsCount;

  BrandModel(
      {required this.id,
      required this.image,
      required this.name,
      this.isFeatured,
      this.productsCount});

  ///Empty Helper Function
  static BrandModel empty() => BrandModel(id: '', image: '', name: '');

  /// Convert model to Json structure so that you can store data in Firebase
  toJson() {
    return {
      'Id': id,
      'Name': name,
      'Image': image,
      'ProductsCount': productsCount,
      'IsFeatured': isFeatured,
    };
  }

  /// Map Json oriented document snapshot from Firebase to UserModel
  factory BrandModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) return BrandModel.empty();
    return BrandModel(
      id: data['Id'] ?? '',
      name: data['Name'] ?? '',
      image: data['Image'] ?? '',
      isFeatured: data['IsFeatured'] ?? false,
      productsCount: int.parse((data['ProductsCount'] ?? 0).toString()),
    );
  }

  /// Map Json oriented document snapshot from Firebase to UserModel
//   factory BrandModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
//     if (document.data() != null) {
//       final data = document.data() !;
//
//       // Map JSON Record to the Model
//       return BrandModel(
//         id: document.id,
//         name: data['Name'] ?? '',
//         image: data['Image'] ?? '',
//         isFeatured: data['IsFeatured'] ?? false,
//         productsCount: int.parse((data['ProductsCount'] ?? 0).toString()),
//       );
//     } else {
//       // Handle the case where the document data is null
//       return BrandModel.empty();
//     }
//   }
//   // Add a method to convert the model to a map for updating data in Firestore
//   Map<String, dynamic> toUpdateMap() {
//     return {
//       'Name': name,
//       'Image': image,
//       'IsFeatured': isFeatured ?? false,
//       'ProductsCount': productsCount ?? 0,
//     };
//   }
}
