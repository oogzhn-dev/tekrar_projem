import 'package:flutter/material.dart';

class second_screen extends StatefulWidget {
  const second_screen({super.key});

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  int counter = 0;
  void counterincrement() {
    counter++;
    setState(() {});
  }

  void counterreset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/zikirmatik.png'),
                _textcounter(),
                _incrementcounter(),
                _resetcounter(),
              ],
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('ANA SAYFA'),
            ),
          ],
        ),
      ),
    );
  }

  Positioned _resetcounter() {
    return Positioned(
      right: 130,
      bottom: 195,
      child: GestureDetector(
        onTap: counterreset,
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
        ),
      ),
    );
  }

  Positioned _incrementcounter() {
    return Positioned(
      bottom: 60,
      child: GestureDetector(
        onTap: counterincrement,
        child: Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
        ),
      ),
    );
  }

  Positioned _textcounter() {
    return Positioned(
      child: Text('$counter', style: TextStyle(fontSize: 90)),
      top: 90,
      right: 120,
    );
  }
}
