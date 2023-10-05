import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 3.0, right: 2.0),
            child: Container(
              height: 55,
              width: context.width - 83,
              decoration: BoxDecoration(
                color: Color(0xff202329),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 27.0, top: 11, right: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/Dashboard.png'),
                        Text('Dashboard',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: Color(0xffFCFCFC).withOpacity(0.46)
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/Trip.png'),
                        Text('My trip',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: Color(0xffFCFCFC).withOpacity(0.46)
                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/user.png'),
                        Text('User',
                          style: GoogleFonts.dmSans(
                              fontSize: 12,
                              color: Color(0xffFCFCFC).withOpacity(0.46)
                          ),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 55,
            width: 70,
            decoration: BoxDecoration(
              color: Color(0xff202329),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(child: Image.asset('assets/images/buttonplus.png')),
          ),
        ],
      ),
    );
  }
}
