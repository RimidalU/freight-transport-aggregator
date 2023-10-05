import 'package:awesome_extensions/awesome_extensions.dart';
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
    return Scaffold(
      backgroundColor: const Color(0xff121418),
           body: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 4.0),
             child: Column(
               children: [
                 const AppBarAndNotifications(),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff202329),
                    borderRadius: BorderRadius.circular(12),
                  ),
                 width: context.width-8,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0, left: 16, right: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 44,
                              width: context.width - 97,
                              child: const SearchTextField(),
                            ),
                            13.widthBox,
                            Container(
                              height: 44,
                              width: 44,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xffFCFCFC).withOpacity(0.08)
                              ),
                            )
                          ],
                        ),
                        12.heightBox,
                        Text('')
                      ],
                    ),
                  ),
                ),
               ],
             ),
           ),
    );
  }
}



class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xFCFCFC).withOpacity(0.08)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xFCFCFC).withOpacity(0.08)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: const Color(0xFCFCFC).withOpacity(0.08)),
        ),
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
      ),
    );
  }
}
