import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionProduit extends StatelessWidget {
  const DescriptionProduit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        child: Flex(direction: Axis.vertical, children: [
          const Flexible(flex: 1, child: Placeholder()),
          Flexible(
            flex: 1,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //alignement btn follwers
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton.icon(
                      onPressed: null,
                      icon: const Icon(Icons.favorite),
                      label: const Text("Follow"),
                    ),
                  ),
                  //title
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Tesexmataki",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  //description
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dil o 180 x 1200n cavans 2014",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "4500 \$",
                      style: TextStyle(
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
                    height: 60,
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
    );
  }
}
