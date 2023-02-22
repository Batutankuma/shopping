import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controllers/favorite_ctr.dart';
import 'package:shopping/models/product_models.dart';

class DescriptionProduit extends StatelessWidget {
  const DescriptionProduit({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final FavotireController favotireController = Get.put(FavotireController());

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: const Text("Description", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        height: (MediaQuery.of(context).size.height + 20),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          child: Flex(direction: Axis.vertical, children: [
            //image produit
            Flexible(flex: 1, child: Image.network(product.image)),
            Flexible(
              flex: 2,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //alignement btn favorite
                    Align(
                      alignment: Alignment.topRight,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          favotireController.addFavorite(product);
                        },
                        // ignore: dead_code
                        icon: Obx(() =>
                            favotireController.existFavorite(product)
                                ? const Icon(Icons.favorite, color: Colors.red)
                                : const Icon(Icons.favorite)),
                        label: const Text("Follow"),
                      ),
                    ),
                    //title
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    //categoty
                    Align(
                      alignment: Alignment.topLeft,
                      child: Chip(
                        label: Text(
                          product.category,
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    //description
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        product.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "${product.price.toString()} \$",
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    //btn
                    Container(
                      decoration: const BoxDecoration(color: Colors.black),
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: const Center(
                        child: Text(
                          "Buy now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
