import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(
          children: [
            const AppBarAndNotifications(),
            5.heightBox,
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff202329),
                borderRadius: BorderRadius.circular(12),
              ),
              width: context.width - 8,
              height: 278,
              child: Column(
                children: [
                  24.heightBox,
                  SvgPicture.asset(
                    'assets/icons/circle.svg',
                    height: 100,
                    width: 100,
                  ),
                  12.heightBox,
                  Text(
                    'Driver',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                    ),
                  ),
                  Text(
                    'Abdula Azis',
                    style: GoogleFonts.dmSans(
                      color: const Color(0xffD0D0D0),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  12.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      height: 1,
                      width: context.width - 32,
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                    ),
                  ),
                  12.heightBox,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Closen trips',
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46),
                              ),
                            ),
                            Text(
                              '36',
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                color: const Color(0xffD0D0D0),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Total miles in VTS',
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46),
                              ),
                            ),
                            Text(
                              '36 244ml',
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                color: const Color(0xffD0D0D0),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Year to date ml',
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                color:
                                    const Color(0xffFCFCFC).withOpacity(0.46),
                              ),
                            ),
                            Text(
                              '360days',
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                color: const Color(0xffD0D0D0),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBarWidget(
        selectedIndex: 1,
      ),
    );
  }
}
