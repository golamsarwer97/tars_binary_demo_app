// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'entertainment_screen.dart';

class LearnAndMarket extends StatelessWidget {
  const LearnAndMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  // topRight: Radius.circular(40.0),
                  bottomRight: Radius.circular(145.0),
                  // topLeft: Radius.circular(40.0),
                  bottomLeft: Radius.circular(145.0)),
            ),
            child: Center(
              child: Text(
                'Universe Learn & Market',
                style: TextStyle(
                  // fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 80),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.60,
            color: Colors.white,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy',
              maxLines: 3,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          // SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntertainmentScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(120, 40),
                backgroundColor: Colors.black,
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
