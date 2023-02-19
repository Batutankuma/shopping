//create card produit
import 'package:flutter/material.dart';
import 'package:shopping/models/product_models.dart';
import 'package:shopping/views/components/description_produit.dart';

Widget cardProduit(BuildContext context, Product product) {
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) => DescriptionProduit(product: product)))),
    child: Card(
      elevation: 0.0,
      child: SizedBox(
        child: Column(
          children: [
            //image produit
            Flexible(
              flex: 6,
              child: Image.network(product.image),
            ),
            const SizedBox(height: 10),
            //title produit
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product.title,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            //description produit
            Flexible(
              flex: 2,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  product.description,
                  maxLines: 2,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
            //price product
            Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "${product.price.toString()} \$",
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
