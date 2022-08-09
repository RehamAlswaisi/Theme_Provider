import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/drawer.dart';
import 'package:provider_example/my_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<MyProvider>(
        create: (_) => MyProvider(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo'),
        ),
        body: null,
        drawer: MyDrawer(),
      ),
      themeMode: Provider.of<MyProvider>(context).tm,
      theme: ThemeData(primaryColor: Colors.blue),
      darkTheme: ThemeData(primaryColor: Colors.black),
    );
  }
}
