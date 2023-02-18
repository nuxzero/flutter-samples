import 'package:flutter/material.dart';

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _items = [];

  @override
  void initState() {
    for (var i = 0; i < 10; i++) {
      _items.add("item 00$i");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: RefreshIndicator(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: ((context, index) {
            return Text(_items[index]);
          }),
        ),
        onRefresh: () {
          return Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              for (var i = 0; i < 10; i++) {
                _items.add("item 00$i");
              }
            });
          });
        },
      ),
    );
  }
}
