class Product {
  final int id;
  final String title;
  final double price;
  final String category;
  final String description;
  final String image;

  Product(this.id, this.title, this.price, this.category, this.description,
      this.image);

  factory Product.fromJson(Map<String,dynamic> json){
    return Product(json['id'],json['title'], json['price'], json['category'], json['description'], json['image']);
  }

  

  List<Product> parseProduct(data){
    return data.map<Product>((json)=> Product.fromJson(json));
  }
}

List<Product> listProduct = [
  Product(
      1,
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      109.95,
      "vie",
      "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
  Product(
      2,
      "Mens Casual Premium Slim Fit T-Shirts",
      22.3,
      "men's clothing",
      "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"),
  Product(
      3,
      "Mens Cotton Jacket",
      55.99,
      "men's clothing",
      "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
      "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg")
];
