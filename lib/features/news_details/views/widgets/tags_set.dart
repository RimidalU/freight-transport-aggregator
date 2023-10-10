import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../ui/ui.dart';

class TagsSet extends StatelessWidget {
  const TagsSet({
    super.key,
    required this.tags,
  });
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
      ),
    );
  }
}
