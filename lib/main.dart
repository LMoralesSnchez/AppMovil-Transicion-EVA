
import 'package:flutter/material.dart';

import 'screens/list_screen.dart';

void main() {
  runApp(const MyApp());
}

//-----------------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

//-----------------------------------------------------
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//-----------------------------------------------------
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Citys del ecuador'),
        centerTitle: true,
      ),
      body:
          const ListScreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
