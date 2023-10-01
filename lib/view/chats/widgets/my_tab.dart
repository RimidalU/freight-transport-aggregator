import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.blueGrey[50],
          appBar: AppBar(
            title: const Text("Simple Tab Demo"),
            backgroundColor: Colors.lightBlue[900],
            bottom: const TabBar(
              tabs: [
                Tab(
                   text: ("One"),
                ),
                Tab(
                  text: ("Two"),
                ),
                Tab(text: ("Three"),)
              ],
            ),
          ),
          body: const TabBarView(children: [
          Center( child: Text("One",style: TextStyle(fontSize: 50),)),
          Center( child: Text("Two",style: TextStyle(fontSize: 50),)),
          Center( child: Text("Three",style: TextStyle(fontSize: 50),))
        ]),
        ),
      ),
    );
  }
}