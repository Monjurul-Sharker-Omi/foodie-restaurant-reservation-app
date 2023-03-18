class ProductModel {
  int id;
  String name;
  String image;
  String location;

  ProductModel(
    this.id,
    this.name,
    this.image,
    this.location,
  );
}

List<ProductModel> productInfo = [
  ProductModel(
    1,
    "Chicken Biriyan",
    "biriyani.png",
    "Ambrosia Hotel and Restaurant",
  ),
  ProductModel(
    2,
    "Sauce TOnkatsu",
    "katsu.png",
    "Handi Restaurant, Chittagong",
  ),
  ProductModel(
    3,
    "Chicken Katsu",
    "tonkatsu.png",
    "Ambrosia Hotel and Restaurant",
  ),
];
