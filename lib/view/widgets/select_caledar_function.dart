import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<void> selectDate(BuildContext context, HomeProvider provider) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDate: provider.selectedDate,
    );
    if (pickedDate != null && pickedDate != provider.selectedDate) {
      provider.setSelectedDate(pickedDate);
      provider.textEditingController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
    }
  }