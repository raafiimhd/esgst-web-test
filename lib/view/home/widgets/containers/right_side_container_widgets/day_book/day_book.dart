import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/widgets/select_caledar_function.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DaybookWidget extends StatelessWidget {
  const DaybookWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => selectDate(context, provider),
            child: AbsorbPointer(
              child: SizedBox(
                width: 250,
                child: TextFormField(
                  controller: provider.textEditingController,
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelText: 'Start Date',
                    labelStyle: const TextStyle(color: kCircleB),
                    suffixIcon: const Icon(Icons.calendar_today),
                    suffixIconColor: kCircleB,
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  readOnly: true,
                  onTap: () => selectDate(context, provider),
                ),
              ),
            ),
          ),
          kWidth10,
            ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
            ),
            onPressed: () {},
            child: const Text('Search', style: TextStyle(color: kTopTextColor)),
          ),
        ],
      );
    });
  }
}
