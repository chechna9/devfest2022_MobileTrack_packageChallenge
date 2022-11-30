import 'package:example/individual_modal.dart';
import 'package:example/individuel_card.dart';
import 'package:example/group.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Material(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Individualmodel> group = [
      Individualmodel(imageUrl: 'assets/localPict.jpg', isNet: false),
      Individualmodel(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
          isNet: true),
      Individualmodel(imageUrl: 'assets/localPict.jpg', isNet: false),
      Individualmodel(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
          isNet: true),
      Individualmodel(imageUrl: 'assets/localPict.jpg', isNet: false),
      Individualmodel(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
          isNet: true),
      Individualmodel(imageUrl: 'assets/localPict.jpg', isNet: false),
      Individualmodel(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
          isNet: true),
      Individualmodel(imageUrl: 'assets/localPict.jpg', isNet: false),
      Individualmodel(
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/8/8c/Cristiano_Ronaldo_2018.jpg',
          isNet: true),
    ];
    return Center(
      child: Group(
        indiduals: group,
        title: 'World Cup',
        maxElmnt: 4,
      ),
    );
  }
}
