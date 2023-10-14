import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ui.dart';

class IssueMoneyActiveItem extends StatelessWidget {
  const IssueMoneyActiveItem({
    super.key,
    required this.name,
    required this.price,
    required this.priceTotal,
    required this.width,
  });

  final String name;
  final int price;
  final int priceTotal;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF202329),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                textAlign: TextAlign.center,
                style: darkTheme(context).primaryTextTheme.titleMedium,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .titleSmall,
                            ),
                            TextSpan(
                              text: price.toString(),
                              style: darkTheme(context)
                                  .primaryTextTheme
                                  .headlineSmall,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(width: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '/',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                            color: const Color(0x75FCFCFC),
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(width: 4),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '\$${priceTotal.toString()}',
                            textAlign: TextAlign.center,
                            style:
                                darkTheme(context).primaryTextTheme.titleSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          8.heightBox,
          const LinearProgressIndicator(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            minHeight: 12,
            backgroundColor: Color(0x14fcfcfc),
            color: Color(0xFF2551EB),
            value: 0.7,
          ),
        ],
      ),
    );
  }
}
