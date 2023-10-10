import 'package:flutter/material.dart';

import 'widgets.dart';

class NewsTagsSet extends StatelessWidget {
  const NewsTagsSet({
    super.key,
    required this.tags,
  });

  final List<Object> tags;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        if (tags.isNotEmpty)
          ...tags
              .map((e) => NewsTag(
                    onTap: () {},
                    title: e.toString(),
                  ))
              .toList(),
      ],
    );
  }
}
