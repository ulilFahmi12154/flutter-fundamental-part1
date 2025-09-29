import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/fab_widget.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: "Muhammad Ulil Fahmi Ma'rifatulloh"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.white, // putih polos 
    title: Text(
      widget.title,
      style: const TextStyle(color: Colors.black), // biar tulisannya kelihatan
    ),
    centerTitle: false,
    elevation: 0, //menghilangkan bayangan
  ),
  backgroundColor: Colors.white, //menyamakan background scaffold dengan appbar
  body: const Center(
    child: Text("Demo Floating Action Button"),
  ),
  floatingActionButton: const FabWidget(),
);

  }
}
