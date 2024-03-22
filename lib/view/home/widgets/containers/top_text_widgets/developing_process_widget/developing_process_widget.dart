import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DevelopingProcessWidget extends StatelessWidget {
  const DevelopingProcessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeight150,
       Container(
        height: 150,
        width: 150,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(fit: BoxFit.cover,image: AssetImage('assets/330256-P9UI1U-537.jpg',))
        ),       ),
        const Text(
          'We are under developing in this screen',
          style: TextStyle(color: kCircleB, fontSize: 20),
        )
      ],
    );
  }
}
