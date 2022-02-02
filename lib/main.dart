import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Draggable FAB"),
      ),
      body: Center(
          child: Card(
              elevation: 8,
              shadowColor: Colors.green,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.red[600],
                ),
                width: 300,
                height: 200,
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const Text(
                          'Movable floating action button',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))),
              ))),
      floatingActionButton: DraggableFab(
          child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Compose Message',
        child: const Icon(Icons.message),
      )),
    );
  }
}
