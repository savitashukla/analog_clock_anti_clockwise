import 'package:flutter/material.dart';

class AnalogicCircle extends StatelessWidget {
  const AnalogicCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    bool isPortait = height > width;
    return Container(
      height: isPortait ? height * 0.5 : height * 0.6,
      width: width * 0.7,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 5),
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueGrey[800],
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Container(

              decoration: const BoxDecoration(
                  color: Colors.pink,
                 shape: BoxShape.circle,
                  /*image: DecorationImage(
                    image: ExactAssetImage('assets/images/224bieee224.gif'),
                   // fit: BoxFit.fill,
                  )*/),
            ),
          ),
        ),
      ),
    );
  }
}
