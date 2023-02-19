import 'package:flutter/material.dart';
import 'package:shopping/views/home/home_view.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  int index = 0;
  List listView = <Widget>[
    const HomeView(),
    const Text("Category"),
    const Text("Application"),
    const Text("Setting")
  ];

  changePage(indexBar) {
    setState(() {
      index = indexBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listView[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: changePage,
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favoris"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
    );
  }
}
