import 'package:flutter/material.dart';
import 'package:untitled55/features/trip_detail_issue_money/widgets/widgets.dart';

class ActiveItemsSet extends StatelessWidget {
  const ActiveItemsSet({
    super.key,
    required this.items,
    required this.width,
  });

  final List<Map<String, Object>> items;
  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 3.1,
          children: List.generate(items.length, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 1,
                vertical: 1,
              ),
              child: IssueMoneyActiveItem(
                name: items[index]['name'] as String,
                price: items[index]['price'] as int,
                priceTotal: items[index]['priceTotal'] as int,
                width: width,
              ),
            );
          }),
        );
      },
      itemCount: 1,
    );
  }
}
