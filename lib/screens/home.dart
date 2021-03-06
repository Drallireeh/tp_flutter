import 'package:flutter/material.dart';
import 'package:exercices/components/exercices/exercice_7.dart';
import 'package:exercices/components/list.dart';
import 'package:exercices/components/carousel/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<Widget> list = [
    CarouselImages(),
    const CustomList(),
    const Exercice7()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Exo 5'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Exo 6'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Exo 7'),
        ],
      ),
    );
  }
}
