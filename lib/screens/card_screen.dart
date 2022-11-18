
import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(title: 'Nirvana',imageUrl: 'https://ychef.files.bbci.co.uk/1600x900/p01wvg0v.webp',),
          SizedBox(height: 20),
          CustomCardType2(title:'Pink Floyd',imageUrl: 'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2014/10/pink-floyd-scaled.jpeg?fit=2560%2C1710&quality=50&strip=all&ssl=1',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://ychef.files.bbci.co.uk/1600x900/p01wvg0v.webp',)
          
        ],
      ),
    );
  }
}

