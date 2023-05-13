import 'package:flutter/material.dart';
import 'dart:math';

class SecondPointer extends StatefulWidget {
  const SecondPointer({Key? key}) : super(key: key);

  @override
  State<SecondPointer> createState() => _SecondPointerState();
}

class _SecondPointerState extends State<SecondPointer> {
  var height;

  var second;

  var angleSecond;

  @override
  Widget build(BuildContext context) {
    
    setState(() {


       height = MediaQuery.of(context).size.height;
       second = DateTime.now().second.toDouble();
       angleSecond = (-pi * (second / 60)) * 2;


    });
   
    
  //  final angleSecond = 0.0;
    final width = MediaQuery.of(context).size.width;
    bool isPortait = height > width;
    return RotatedBox(
      quarterTurns: 2,
      child: Transform.rotate(
       angle: angleSecond,
        child: Transform.translate(
          offset: Offset(0, 34),
          child: Center(
            child: Container(
              height: isPortait ? height * 0.15 : width * 0.10,
              width: 2,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.9),
                borderRadius: BorderRadius.circular(32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
