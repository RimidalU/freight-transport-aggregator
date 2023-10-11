import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/constants.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

class SettlementScreen extends StatefulWidget {
  const SettlementScreen({super.key});

  static const routeName = '/settlement';

  @override
  State<SettlementScreen> createState() => _SettlementScreenState();
}

class _SettlementScreenState extends State<SettlementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            children: [
              const AppBarAndNotifications(),
              3.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: context.width - 8,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 44,
                            width: context.width - 97,
                            child: const SearchTextField(),
                          ),
                          13.widthBox,
                          IconButtonGrey(
                            onTap: () {},
                            size: 'large',
                            child: filterIcon,
                          ),
                        ],
                      ),
                      12.heightBox,
                      Text(
                        'My Settlement',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: const Color(0xffD0D0D0)),
                      ),
                      12.heightBox,
                      SizedBox(
                        height: context.height - 228,
                        width: context.width - 32,
                        child: const SettlementCardSet(
                          settlements: [],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
