import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ui.dart';

class RatingInfoButton extends StatelessWidget {
  const RatingInfoButton({
    super.key,
    required this.onTapLink,
    required this.rating,
  });

  final String onTapLink;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.of(context).pushNamed(onTapLink);
      },
      child: Container(
        width: 111,
        height: 72,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff202329),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/images/rating.png'),
              4.widthBox,
              Column(
                children: [
                  Text(
                    'Rating',
                    style: darkTheme(context).primaryTextTheme.titleSmall,
                  ),
                  Text(
                    rating.toStringAsFixed(2),
                    style: darkTheme(context).primaryTextTheme.headlineLarge,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
