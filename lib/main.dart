import 'package:flutter/material.dart';
import 'package:suresh/homePage.dart';
import 'package:suresh/sampleContent.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.favorite_outline),
              text: 'Boys',
            ),
            Tab(
              icon: Icon(Icons.access_alarms_outlined),
              text: 'Their free times!',
            )
          ]),
          title: Image.asset(
            'assets/boys.png',
            width: 150,
          ),
        ),
        body: TabBarView(children: [
          HomePage(),
          SamplePage(),
        ]));
  }
}
