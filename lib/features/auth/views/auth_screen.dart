import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../ui/ui.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static const routeName = '/auth';

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              Image.asset(logo, scale: 4),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                width: double.infinity,
                height: height * 0.76,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Color(0xff202329),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      login,
                      style: HeadlineTextStyle.style400w12.copyWith(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      welcome,
                      style: HeadlineTextStyle.style700w32
                          .copyWith(color: ProjectColors.white),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: FieldForm(label: 'email'),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: FieldForm(
                        label: 'password',
                        icon: IconButton(
                          icon: const Icon(
                            Icons.visibility_off_outlined,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.02),
                          child: Text(
                            forgot,
                            style: HeadlineTextStyle.style500w14
                                .copyWith(color: ProjectColors.white),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ActionButton(
                      onTap: () {},
                      type: 'normal',
                      isAuth: true,
                      child: Text(
                        'Login in',
                        style: HeadlineTextStyle.style500w14.copyWith(
                          color: ProjectColors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
