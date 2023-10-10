import 'package:flutter/material.dart';

import 'widgets.dart';

class NewsCardSet extends StatelessWidget {
  NewsCardSet({
    super.key,
    required this.news,
  });

  List<Object> news;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (news.isNotEmpty) ...news.map((e) => const NewsCard()).toList()
      ],
    );
  }
}
