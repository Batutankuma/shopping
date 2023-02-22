import 'package:get/get.dart';
import 'package:shopping/config/service_api.dart';
import 'package:shopping/models/product_models.dart';

class FavotireController extends GetxController with StateMixin<List<Product>> {
  //variable global table favorite
  final favorite = <Product>[].obs;
  final name = ''.obs;
  ProviderServices providerServices = ProviderServices();

  Future<void> readTest() async{
    try {
      var response = await providerServices.find('products');
      var productList = parsePhotos(response.toString());
      print(productList);
    } catch (e) {
      print(e);
    }
  }

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
