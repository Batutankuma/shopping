import 'package:flutter/material.dart';
import 'package:shopping/views/components/card_produit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: null, icon: Icon(Icons.menu))
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[350],
            height: 100,
            padding: const EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            child: SizedBox(
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Buy art, it's easy!",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Browse by collection",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.91,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: 50,
                itemBuilder: ((context, index) => cardProduit(context,
                    "Ornella Pocetti", "Erinia ottom canvas", 2500)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
