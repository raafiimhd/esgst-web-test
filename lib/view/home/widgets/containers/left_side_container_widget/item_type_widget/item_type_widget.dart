import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:flutter/material.dart';

class ItemTypeWidget extends StatelessWidget {
  const ItemTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 250,
          child: TextFormField(
            style: const TextStyle(color: kCircleB),
            decoration: InputDecoration(
              labelStyle: const TextStyle(color: kCircleB),
              labelText: 'Item Type*',
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
