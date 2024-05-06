import 'package:flutter/material.dart';

class BoxesColumn extends StatelessWidget {
  const BoxesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;

    print("Boxes Column o'zgardi");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: screenWidth,
          height: bodyHeight * 0.5,
          color: Colors.white,
          alignment: Alignment.center,
          child: Text(
              "Eni: ${screenWidth.toStringAsFixed(2)} va buyi: ${bodyHeight.toStringAsFixed(2)}"),
        ),
        Container(
          width: screenWidth,
          height: bodyHeight * 0.5,
          color: Colors.amber,
        ),
        Container(
          width: screenWidth,
          height: bodyHeight * 0.5,
          color: Colors.blue,
        ),
        Container(
          width: screenWidth,
          height: bodyHeight * 0.5,
          color: Colors.red,
        ),
      ],
    );
  }
}
