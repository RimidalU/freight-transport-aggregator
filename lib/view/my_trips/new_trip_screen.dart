import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewTripScreen extends StatelessWidget {
  const NewTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: SafeArea(
        child: Column(
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
            Row(
              children: [
                Container(
                  height: 50,
                  width: context.width - 8,
                  decoration: const BoxDecoration(
                      color: Color(0xff202329),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17),
                      )),

                  child: Row(
                    children: [
                      16.widthBox,
                      Image.asset('assets/images/back.png'),
                      3.widthBox,
                      Text(
                        'Back',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: Color(0xffD0D0D0)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
