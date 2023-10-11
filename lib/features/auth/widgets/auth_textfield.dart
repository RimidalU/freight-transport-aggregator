import 'package:flutter/material.dart';

import '../../../ui/text_style.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool active = true;
    return Column(
      children: [
        SizedBox(
          width: width * 0.95,
          height: height * 0.06,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  4,
                ),
              ),
              hintText: 'email',
              hintStyle: HeadlineTextStyle.style400w14.copyWith(
                color: Colors.grey.shade500,
              ),
              label: Text(
                'email',
                style: HeadlineTextStyle.style500w14.copyWith(
                  color: Colors.grey.shade500,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: height * 0.02),
        SizedBox(
          width: width * 0.95,
          height: height * 0.06,
          child: TextField(
            // obscureText: active,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                hintStyle: HeadlineTextStyle.style400w14.copyWith(
                  color: Colors.grey.shade500,
                ),
                label: Text(
                  'password',
                  style: HeadlineTextStyle.style500w14.copyWith(
                    color: Colors.grey.shade500,
                  ),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    active != active;
                  },
                )),
          ),
        ),
      ],
    );
  }
}
