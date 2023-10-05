import 'package:flutter/material.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';

class MyTripsScreen extends StatefulWidget {
  const MyTripsScreen({Key? key}) : super(key: key);

  @override
  State<MyTripsScreen> createState() => _MyTripsScreenState();
}

class _MyTripsScreenState extends State<MyTripsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121418),
      body: SingleChildScrollView(),
      bottomNavigationBar: NavBarWidget(selectedIndex: 1),
    );
  }
}
