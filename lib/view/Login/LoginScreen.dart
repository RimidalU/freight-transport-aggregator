import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121418),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                12.heightBox,
                Center(child: Image.asset('assets/images/logo.png')),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: context.width,
              decoration: BoxDecoration(
                color: const Color(0xff202329),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
                border:
                    Border.all(color: const Color(0xffffffff).withOpacity(0.1)),
              ),
              child: Column(
                children: [
                  32.heightBox,
                  Text(
                    'Login ur account',
                    style: GoogleFonts.dmSans(
                      color: const Color(0xffFCFCFC).withOpacity(0.46),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    'Welcome Back',
                    style: GoogleFonts.dmSans(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffD0D0D0),
                    ),
                  ),
                  const TextField(),
                  const TextField(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot your password?',
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: const Color(0xffD0D0D0),
                      ),
                    ),
                  ),
                  Container(
                    height: 52,
                    width: context.width - 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin:
                            Alignment(1.142341136932373, 0.023042581975460052),
                        end: Alignment(
                            -0.023042581975460052, 0.019706591963768005),
                        colors: [
                          Color.fromRGBO(40, 151, 255, 1),
                          Color.fromRGBO(37, 80, 235, 1)
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Login in',
                        style: GoogleFonts.dmSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(
                            0xffffffff
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
