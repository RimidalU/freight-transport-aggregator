import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled55/ui/colors.dart';
import 'package:untitled55/view/global_widgets/navbarWidget.dart';
import '../../ui/text_style.dart';

TextEditingController toController = TextEditingController();
TextEditingController fromController = TextEditingController();
TextEditingController locationController = TextEditingController();
TextEditingController noteController = TextEditingController();

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
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
                      Text('Time off',
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        color: const Color(0xffD0D0D0)
                      ),),
                      16.heightBox,
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),

                          label: Text(
                            'To',
                            style: HeadlineTextStyle.style500w14.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      16.heightBox,
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),

                          label: Text(
                            'From',
                            style: HeadlineTextStyle.style500w14.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      16.heightBox,
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),

                          label: Text(
                            'Location',
                            style: HeadlineTextStyle.style500w14.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      16.heightBox,
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(

                            borderRadius: BorderRadius.circular(
                              12,
                            ),
                          ),

                          label: Text(
                            'Note',
                            style: HeadlineTextStyle.style500w14.copyWith(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                      16.heightBox,
                      Container(
                        width: context.width-16,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2551eb),
                              Color(0xff2898ff),
                            ],
                          )
                        ),
                        child: Center(
                          child: Text('Save', style: GoogleFonts.dmSans(
                            color: ProjectColors.white,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
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
      bottomNavigationBar: NavBarWidget(),
    );
  }
}
