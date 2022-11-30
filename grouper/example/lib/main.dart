import 'package:flutter/material.dart';
import 'package:grouper/grouper.dart';

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Group(
          indiduals: group,
          title: 'World Cup',
          color: const Color.fromARGB(255, 150, 139, 104),
          maxElmnt: 5,
          buttonStyle: const TextStyle(color: Colors.white),
          titleStyle: const TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          xPadding: 4,
          yPadding: 20,
          ySpacing: 10,
          xSpacing: 10,
          borderRadius: 20,
          alignment: WrapAlignment.start,
        ),
      ),
    );
  }
}
