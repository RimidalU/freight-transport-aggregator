import 'package:flutter/material.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';

class SettlementScreen extends StatefulWidget {
  const SettlementScreen({super.key});

  @override
  State<SettlementScreen> createState() => _SettlementScreenState();
}

class _SettlementScreenState extends State<SettlementScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121418),
           body: Padding(
             padding: EdgeInsets.symmetric(horizontal: 4.0),
             child: Column(
               children: [
                 AppBarAndNotifications(),

               ],
             ),
           ),
    );
  }
}
