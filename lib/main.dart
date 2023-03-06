import 'package:flutter/material.dart';
import 'package:widget_denemeler/custom_navbar.dart';
import 'package:widget_denemeler/home.dart';
import 'package:widget_denemeler/list.dart';
import 'package:widget_denemeler/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int pageIndex = 0;
  List<Widget> get pages => [
        HomePage(),
        ListPage(),
        ProfilePage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        elevation: 10,
        shadowColor: Colors.red,
        title: Text(widget.title),
        bottom: PreferredSize(
            child: Row(children: [Icon(Icons.add)]),
            preferredSize: Size.fromHeight(75)),
      ),
      body: pages[pageIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: CustomNavBar(
          pageIndex: pageIndex,
          onTap: (value) {
            pageIndex = value;
            setState(() {});
          }),
    );
  }
}
