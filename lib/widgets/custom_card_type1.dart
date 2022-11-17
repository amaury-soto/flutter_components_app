import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
            title: Text('Title1'),
            subtitle: Text(
                'Laborum cillum cupidatat dolor ex amet labore nisi aute. In fugiat commodo et anim dolore irure commodo. Eu exercitation tempor ea cillum dolor magna veniam deserunt et nisi amet magna fugiat. Dolore ex sit veniam officia esse occaecat.'),
            leading: Icon(Icons.abc, color: AppTheme.primary)),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Ok')),
            ],
          ),
        )
      ],
    ));
  }
}
