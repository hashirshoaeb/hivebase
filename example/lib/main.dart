import 'package:example/test_model/test_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hivebase/hivebase.dart';

void main() async {
  await HiveStore.initialize();
  Hive.registerAdapter(TestAdapter());
  final ref = await HiveStore.instance.collection<Test>('test-collcetion');
  ref.snapshot().listen(
    (event) {
      print("New Event");
      event.forEach(
        (element) {
          print(element.get());
        },
      );
    },
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            final ref =
                await HiveStore.instance.collection<Test>('test-collcetion');
            ref.add(Test(id: '$counter', data: "$counter : date"));
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}
