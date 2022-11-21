import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sliders and switches'), actions: []),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 20,
            max: 400,
            activeColor: AppTheme.primary,
            //divisions: 10,
            onChanged: _sliderEnable
                ? (value) {
                    print(value);
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          /* const SizedBox(height: 20),
          Slider(
            value: _sliderValue,
            min: 20,
            max: 400,
            activeColor: AppTheme.primary,
            divisions: 10,
            onChanged: (value) {
              print(value);
              _sliderValue = value;
              setState(() {});
            },
          ), */

          Checkbox(
              value: _sliderEnable,
              onChanged: ((value) {
                _sliderEnable = value ?? true;
                setState(() {});
              })),
          CheckboxListTile(
            //tileColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: ((value) {
                _sliderEnable = value ?? true;
                setState(() {});
              })),

        const AboutListTile(),


          //Switch     
          SwitchListTile.adaptive(
            //tileColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: ((value) {
                _sliderEnable = value;
                setState(() {});
              })),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.pngall.com/wp-content/uploads/13/Dragon-Ball-No-Background.png'),
                fit: BoxFit.cover,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
