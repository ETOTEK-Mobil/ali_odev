import 'package:flutter/material.dart';

class ProgressSliderBarPage extends StatefulWidget {
  const ProgressSliderBarPage({super.key});

  @override
  State<ProgressSliderBarPage> createState() => _ProgressSliderBarPageState();
}

class _ProgressSliderBarPageState extends State<ProgressSliderBarPage> {

  double sliderStatus = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Progress Slider Bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            min: 0.0,
            max: 100.0,
            value: sliderStatus,
            onChanged: (double i){
              setState(() {
                sliderStatus = i;
              });
            }
            ),

            Text("%${sliderStatus.toInt()}"),
            
            SliderTheme(
              data:const SliderThemeData(
                activeTrackColor: Colors.blue,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
                trackHeight: 15.0,
                trackShape: RectangularSliderTrackShape()
              ), 
              child: Slider(
                min: 0,
                max: 100,
                value: sliderStatus, 
                onChanged: (double value){}
                )
                )
        ],
      ),
    );
  }
}