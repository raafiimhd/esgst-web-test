import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StockOpeningWidget extends StatelessWidget {
  const StockOpeningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 250,
                  child: DropdownButtonFormField<String>(
                    dropdownColor: kBlack,
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Item Type:',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        provider.selectIncome(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Select',
                        child: Text('Select'),
                      ),
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        Text(
                          provider.selectIncomSelect,
                          style: const TextStyle(color: kCircleB),
                        ),
                      ];
                    },
                    style: const TextStyle(color: Kwhite),
                  ),
                ),
                kWidth10,
                 SizedBox(
                  width: 250,
                  child: DropdownButtonFormField<String>(
                    dropdownColor: kBlack,
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Item Name:',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        provider.selectIncome(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Select',
                        child: Text('Select'),
                      ),
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        Text(
                          provider.selectIncomSelect,
                          style: const TextStyle(color: kCircleB),
                        ),
                      ];
                    },
                    style: const TextStyle(color: Kwhite),
                  ),
                ),
                kWidth10,
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Rate*',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            kHeight5,
            Row(
              children: [
                 SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Quantity*',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                kWidth10,
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Value*',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
