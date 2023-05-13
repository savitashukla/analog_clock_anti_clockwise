import 'package:analog_clock_anti_clockwise/clock/second_pointer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import 'analogic_circle.dart';


class ClockView extends StatefulWidget {
  const ClockView({Key? key}) : super(key: key);

  @override
  State<ClockView> createState() => _ClockViewState();
}

class _ClockViewState extends State<ClockView> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      const SecondPointer();
    });
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(seconds: 1),
      ),
      builder: (context, snapshot) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const AnalogicCircle(),
                   SecondPointer(),
                //  const MinutePointer(),
                 // const HourPointer(),
                  Container(
                    height: 16,
                    width: 16,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    DateFormat('hh:mm:ss a').format(DateTime.now()),
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.black),
                  ),
                ],
              ),
              Text(
                DateFormat.yMMMMEEEEd().format(DateTime.now()),
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        );
      },
    );
  }
}
