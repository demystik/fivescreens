
class ProductModel {
  String imageUrl;
  String productName;
  double productPrice;
  String productMaterial;

  ProductModel({
    required this.imageUrl,
    required this.productName,
    required this.productPrice,
    required this.productMaterial,
  });
}


List<ProductModel> products = [
ProductModel(imageUrl: "assets/images/product1.jpg", productName: "Nordic Lounge Chair", productPrice: 420, productMaterial: "Ash Wood / Linen"),
ProductModel(imageUrl: "assets/images/product2.jpg", productName: "Three seaters", productPrice: 560, productMaterial: "Dark Wood"),
ProductModel(imageUrl: "assets/images/product3.jpg", productName: "Dining Table", productPrice: 120, productMaterial: "Brown Wood"),
];
