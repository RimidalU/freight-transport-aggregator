import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/ui/colors.dart';

import '../../../ui/ui.dart';
import '../../../ui/widgets/widgets.dart';

TextEditingController toController = TextEditingController();
TextEditingController fromController = TextEditingController();
TextEditingController locationController = TextEditingController();
TextEditingController noteController = TextEditingController();

class InviteUserScreen extends StatefulWidget {
  const InviteUserScreen({super.key});

  static const routeName = '/invite-user';

  @override
  State<InviteUserScreen> createState() => _InviteUserScreenState();
}

class _InviteUserScreenState extends State<InviteUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
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
              Container(
                height: 50,
                width: context.width - 8,
                decoration: const BoxDecoration(
                    color: Color(0xff202329),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    )),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      16.widthBox,
                      Image.asset('assets/images/back.png'),
                      3.widthBox,
                      Text(
                        'Back',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: const Color(0xffD0D0D0)),
                      )
                    ],
                  ),
                ),
              ),
              3.heightBox,
              Container(
                width: context.width - 8,
                decoration: BoxDecoration(
                  color: const Color(0xff202329),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      16.heightBox,
                      Text(
                        'Time off',
                        style: GoogleFonts.dmSans(
                            fontSize: 14, color: const Color(0xffD0D0D0)),
                      ),
                      16.heightBox,
                      const FieldForm(
                        label: 'To',
                      ),
                      16.heightBox,
                      const FieldForm(
                        label: 'From',
                      ),
                      16.heightBox,
                      const FieldForm(
                        label: 'Location',
                      ),
                      16.heightBox,
                      const FieldForm(
                        label: 'Note',
                      ),
                      16.heightBox,
                      ActionButton(
                        child: Text(
                          'Save',
                          style: GoogleFonts.dmSans(
                            color: ProjectColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onTap: () {},
                      ),
                      16.heightBox,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBarWidget(selectedIndex: 2),
    );
  }
}
