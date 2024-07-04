class Product{
  int id;
  String productName;
  String description;
  double price;

  Product({
    required this.id,
    required this.productName,
    required this.description,
    required this.price});

  factory Product.fromJson(Map<String, dynamic> json){
    return switch(json){
      {
        'id' : int id,
        'productname' : String productName,
        'description' : String description,
        'price' : double price
      } =>
      Product(
        id: id,
        productName: productName,
        description: description,
        price: price
      ),
      _ => throw FormatException('Unable to load Product'),
    };
  }
}