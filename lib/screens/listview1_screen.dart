import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['A', 'B', 'C', 'F'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Listview'),
        ),
        body: ListView(
          children: [
            ...options
                .map((e) => ListTile(
                      title: Text(e),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ))
                .toList()
          ],
        ));
  }
}
