import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

final items = [
  {
    'name': 'Lamer',
    'price': 100,
    'priceTotal': 250,
    'fullName': 'Bozhenko',
    'date': DateTime.now().add(
      const Duration(days: -10),
    )
  },
  {
    'name': 'Palette',
    'price': 90,
    'priceTotal': 300,
    'fullName': 'Bozhenko Andrey',
    'date': DateTime.now().add(
      const Duration(days: -32),
    )
  },
  {
    'name': 'Late',
    'price': 200,
    'priceTotal': 375,
    'fullName': 'Andrey Bozhenko',
    'date': DateTime.now().add(
      const Duration(days: -11),
    )
  },
  {
    'name': 'Coffee',
    'price': 225,
    'priceTotal': 250,
    'fullName': 'Andrey',
    'date': DateTime.now().add(
      const Duration(days: -33),
    )
  },
];

class TripDetailIssueMoneyScreen extends StatelessWidget {
  final TripModel data;
  const TripDetailIssueMoneyScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const IssueMoneyHeader(
            order: 1,
            trailer: 36,
            vehicle: 44,
          ),
          3.heightBox,
          ActiveItemsSet(
            items: items,
            width: Get.width / 2 - 5,
          ),
          3.heightBox,
          Container(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xFF202329),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'History',
                      style: darkTheme(context).primaryTextTheme.headlineMedium,
                    ),
                    Text(
                      'See more',
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                4.heightBox,
                ...List.generate(
                    items.length,
                    (index) => IssueMoneyHistoryItem(
                          name: items[index]['name'] as String,
                          price: items[index]['price'] as int,
                          priceTotal: items[index]['priceTotal'] as int,
                          fullName: items[index]['fullName'] as String,
                          date: items[index]['date'] as DateTime,
                          order: index + 1,
                        )),
              ],
            ),
          ),
          4.heightBox,
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF202329),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17), topRight: Radius.circular(17)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: ActionButton(
                onTap: () {},
                type: 'normal',
                child: Text(
                  'Request money',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
