import 'package:get/get.dart';
import 'package:shopping/models/product_models.dart';

class FavotireController extends GetxController {
  //variable global table favorite
  final favorite = <Product>[].obs;
  final name = ''.obs;

  //add favorite produit
  void addFavorite(Product product) {
    if (favorite.contains(product)) {
      favorite.remove(product);
    } else {
      favorite.add(product);
    }
  }
  bool existFavorite(product) {
    if (favorite.contains(product)) {
      return true;
    } else {
      return false;
    }
  }

  void changeName() => name.value = 'name3';
}
