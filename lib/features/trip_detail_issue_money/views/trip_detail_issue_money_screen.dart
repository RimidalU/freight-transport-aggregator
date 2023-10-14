import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

const items = [
  {'name': 'Lamer', 'price': 100, 'priceTotal': 250},
  {'name': 'Palette', 'price': 90, 'priceTotal': 300},
  {'name': 'Late', 'price': 200, 'priceTotal': 375},
  {'name': 'Coffee', 'price': 225, 'priceTotal': 250},
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
                  15,
                  (index) => Container(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    margin: const EdgeInsets.only(top: 4, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0x14FCFCFC)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            color: const Color(0x14FCFCFC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Image.asset("assets/images/user.png"),
                        ),
                        12.widthBox,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lumper',
                                style: darkTheme(context)
                                    .primaryTextTheme
                                    .headlineMedium,
                              ),
                              Text(
                                'Andrey Bozhenko, 20 Jun 2021',
                                style: darkTheme(context)
                                    .primaryTextTheme
                                    .titleMedium,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '+',
                                    style: darkTheme(context)
                                        .primaryTextTheme
                                        .headlineMedium,
                                  ),
                                  TextSpan(
                                    text: '\$',
                                    style: darkTheme(context)
                                        .primaryTextTheme
                                        .titleMedium,
                                  ),
                                  TextSpan(
                                    text: '36',
                                    style: darkTheme(context)
                                        .primaryTextTheme
                                        .headlineMedium,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Trip #${data.index}',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .titleMedium,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
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
