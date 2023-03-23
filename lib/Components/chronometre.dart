import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Chronometer extends StatefulWidget {
  const Chronometer({super.key});

  @override
  _ChronometerState createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {
  int _counter = 0;
   late Timer _timer;

  void initializeTimer() {
    _timer = Timer(const Duration(seconds: 1), () {
      // Do something after 1 second
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter < 30) {
          _counter++;
        }

      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _counter = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SleekCircularSlider(
            appearance: CircularSliderAppearance(
              size: 180,
              customWidths: CustomSliderWidths(progressBarWidth: 20),
              infoProperties: InfoProperties(
                mainLabelStyle: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
                bottomLabelText: 'Secondes',
                bottomLabelStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            min: 0,
            max: 30,
            initialValue: _counter.toDouble(),
            onChange: (double value) {
              double seconds;
              seconds = (value / 100) * 60;
              print('La valeur du slider est de $seconds secondes');
            }),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 35,
              icon: const Icon(
                Icons.play_circle,
                color: Colors.green,
              ),
              onPressed: _startTimer,
            ),
            const SizedBox(width: 20),
            IconButton(
              iconSize: 35,
              icon: const Icon(
                Icons.restart_alt,
                color: Colors.red,
              ),
              onPressed: _stopTimer,
            ),
          ],
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Timer>('_timer', _timer));
    properties.add(DiagnosticsProperty<Timer>('_timer', _timer));
  }
}
