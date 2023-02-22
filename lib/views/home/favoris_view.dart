import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controllers/favorite_ctr.dart';
import 'package:shopping/views/components/description_produit.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.grey[350],
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.menu))
        ],
      ),
      body: GetBuilder<FavotireController>(
        init: FavotireController(),
        builder: ((controller) {
          return listBuilder(controller);
        }),
      ),
    );
  }

  ListView listBuilder(controller) {
    return ListView.builder(
      itemCount: controller.favorite.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => DescriptionProduit(
                      product: controller.favorite[index])))),
          child: ListTile(
            leading: const Icon(Icons.production_quantity_limits),
            title: Text(controller.favorite[index].title),
            subtitle: Text(controller.favorite[index].description, maxLines: 2),
          ),
        );
      },
    );
  }
}
