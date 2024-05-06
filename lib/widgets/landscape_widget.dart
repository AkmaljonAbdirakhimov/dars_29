import 'package:flutter/material.dart';

class BoxesRow extends StatelessWidget {
  const BoxesRow({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;

    print("Boxes Row o'zgardi");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: screenWidth * 0.25,
          height: screenWidth * 0.25,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text(
              "Eni: ${screenWidth.toStringAsFixed(2)} va buyi: ${bodyHeight.toStringAsFixed(2)}"),
        ),
        Container(
          width: screenWidth * 0.25,
          height: screenWidth * 0.25,
          color: Colors.amber,
        ),
        Container(
          width: screenWidth * 0.25,
          height: screenWidth * 0.25,
          color: Colors.blue,
        ),
        Container(
          width: screenWidth * 0.25,
          height: screenWidth * 0.25,
          color: Colors.red,
        ),
      ],
    );
  }
}
