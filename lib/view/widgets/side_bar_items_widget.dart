
import 'package:ecgst_web_test/constants/const.dart';
import 'package:flutter/material.dart';

class SidebarMenuItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const SidebarMenuItem({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: startTextStyle,
      ),
    );
  }
}
