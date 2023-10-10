import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../features/features.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({
    super.key,
    required this.userName,
    required this.userAvatar,
  });

  final String userName;
  final String userAvatar;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(AccountScreen.routeName);
      },
      child: Container(
        width: context.width - 120,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff202329),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  16.widthBox,
                  Image.asset(userAvatar),
                  3.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: const Color(0xffFCFCFC).withOpacity(0.46),
                        ),
                      ),
                      Text(
                        userName,
                        style: GoogleFonts.dmSans(
                          fontSize: 16,
                          color: const Color(0xffD0D0D0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset('assets/images/Arrow.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}