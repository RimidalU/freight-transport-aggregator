import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/constants/icons_path.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';

import '../../../ui/ui.dart';

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
      body: Padding(
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
                padding: const EdgeInsets.only(top: 12.0, left: 16, right: 16),
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
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Container(
                              height: 64,
                              width: context.width - 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.08),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButtonGrey(
                                          onTap: () {},
                                          child: Image.asset(
                                              'assets/icons/Doc.png'),
                                        ),
                                        12.widthBox,
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '#2131231-T',
                                              style: GoogleFonts.dmSans(
                                                color: const Color(0xffD0D0D0),
                                              ),
                                            ),
                                            Text(
                                              'Wade Warren',
                                              style: GoogleFonts.dmSans(
                                                fontSize: 12,
                                                color: const Color(0xffFCFCFC)
                                                    .withOpacity(0.46),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '\$1000',
                                          style: GoogleFonts.dmSans(
                                            color: const Color(0xffD0D0D0),
                                          ),
                                        ),
                                        Text(
                                          '20 Jun 2021',
                                          style: GoogleFonts.dmSans(
                                            fontSize: 12,
                                            color: const Color(0xffFCFCFC)
                                                .withOpacity(0.46),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 10,
                      ),
                    )
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
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color(0x00fcfcfc).withOpacity(0.08)),
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
          hintStyle: GoogleFonts.dmSans(
            color: const Color(0xffFCFCFC).withOpacity(0.46),
          )),
    );
  }
}
