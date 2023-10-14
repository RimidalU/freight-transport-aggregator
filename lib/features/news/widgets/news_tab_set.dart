import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class NewsTabSet extends StatelessWidget {
  const NewsTabSet({
    super.key,
    required this.news,
  });

  final List<Object> news;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (news.isNotEmpty) ...news.map((e) => const NewsTab()).toList(),
        ],
      ),
    );
  }
}
