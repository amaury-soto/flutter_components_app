import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
        title: Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Icon(Icons.supervisor_account),
            ),
          )
        ]),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://people.com/thmb/7z6mjn0RhE3-Ee9Wg0tYxEczjoA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(899x58:901x60)/kurt-cobain-10-b0379fed591c4be98a11e38e3681d53b.jpg'),
         ),
      ),
    );
  }
}