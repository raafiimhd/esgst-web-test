import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
 const ElevatedButtonWidget(
      {super.key, required this.onPressed, required this.name});
  final VoidCallback onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 87, 87, 87))),
        onPressed: onPressed,
        child: Text(
          name,
          style: const TextStyle(color: kTopTextColor),
        ));
  }
}
