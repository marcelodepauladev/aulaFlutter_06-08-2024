import 'package:flutter/material.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

void main() {
  runApp(const MaterialApp(title: "Flutter", home: MyHomePage()));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    DefaultTabController(length: 3, child: 
    Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_movies),
                  text: 'Tab 1'),
              Tab(icon: Icon(Icons.face),
                  text: 'Tab 2'),
              Tab(icon: Icon(Icons.favorite),
                  text: 'Tab 3')],
          )),
        body: const TabBarView(children: [pagina1(), pagina2(), pagina3()])));
  }
}
