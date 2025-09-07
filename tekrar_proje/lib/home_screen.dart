import 'package:flutter/material.dart';
import 'package:tekrar_proje/second_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/whatsapp.webp', width: 150, height: 150),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 3),
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            width: 300,
            height: 200,
            child: Column(
              children: [
                Text(
                  'OGUZHAN',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                SizedBox(height: 30),
                Image.asset(
                  'assets/images/whatsapp.webp',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => second_screen()),
              );
            },
            child: Text('ZIKIR MATIK'),
          ),
        ],
      ),
    );
  }
}
