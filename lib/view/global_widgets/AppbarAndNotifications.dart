import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarAndNotifications extends StatefulWidget {
  const AppBarAndNotifications({super.key});

  @override
  State<AppBarAndNotifications> createState() => _AppBarAndNotificationsState();
}

class _AppBarAndNotificationsState extends State<AppBarAndNotifications> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: context.width - 8,
          decoration: const BoxDecoration(
            color: Color(0xff202329),
          ),
        ),
        Container(
          height: 1,
          width: context.width - 8,
          color: const Color(0xffffffff).withOpacity(0.2),
        ),
        Container(
          height: 56,
          width: context.width - 8,
          decoration: const BoxDecoration(
              color: Color(0xff202329),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  16.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.heightBox,
                      Text(
                        'Hello',
                        style: GoogleFonts.dmSans(
                            fontSize: 12,
                            color:
                            const Color(0xffFCFCFC).withOpacity(0.46)),
                      ),
                      3.widthBox,
                      Text(
                        'Thusday 04.05.2023',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: const Color(0xffD0D0D0)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/Search.png'),
                    ),
                  ),
                  8.widthBox,
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xffFCFCFC).withOpacity(0.08),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Image.asset(
                          'assets/images/NotificationWhite.png'),
                    ),
                  ),
                  16.widthBox,
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
