import 'package:flutter/material.dart';
import 'package:flutter_form/customClip.dart';
import 'package:flutter_form/customPainter.dart';
import 'package:flutter_form/form.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(height: h, color: Colors.black),
            Container(
              height: h * .5,
              color: Colors.red,
              child: CustomPaint(
                painter: MyPainter(),
              ),
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: Clip1(),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: h * .25, left: 15),
                  height: h * .75,
                  width: w,
                  color: const Color.fromARGB(255, 110, 200, 239),
                  child: const MyForm(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

