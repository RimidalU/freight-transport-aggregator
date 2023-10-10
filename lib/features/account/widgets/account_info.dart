import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ui.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({
    super.key,
    this.onTap,
    required this.email,
    required this.name,
    required this.tags,
  });

  final VoidCallback? onTap;
  final String email;
  final String name;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 291,
      width: context.width - 8,
      decoration: BoxDecoration(
          color: const Color(0xff202329),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: onTap,
            child: Image.asset('assets/images/iconaccount.png'),
          ),
          Text(
            name,
            style: GoogleFonts.dmSans(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: const Color(0xffD0D0D0),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(111),
              color: const Color(0xff32A5D7).withOpacity(0.08),
            ),
            height: 40,
            width: 104,
            child: Center(
              child: Text(
                'Vacation',
                style: GoogleFonts.dmSans(color: const Color(0xff32A5D7)),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            email,
            style: GoogleFonts.dmSans(
                color: const Color(0xffffffff).withOpacity(0.5)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...tags
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: IconButtonGrey(
                        onTap: () {},
                        size: 'tag',
                        child: Text(
                          e,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
