import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PmtWidget extends StatelessWidget {
  const PmtWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 250,
            child: DropdownButtonFormField<String>(
              dropdownColor: kBlack,
              icon:
                  const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: kCircleB),
                labelText: 'Month',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  provider.selectMonthYear(newValue);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: 'list',
                  child: Text('list'),
                ),
              ],
              selectedItemBuilder: (BuildContext context) {
                return [
                  Text(
                    provider.selectMonth,
                    style: const TextStyle(color: kCircleB),
                  ),
                ];
              },
              style: const TextStyle(color: Kwhite),
            ),
          ),
          SizedBox(
            width: 250,
            child: DropdownButtonFormField<String>(
              dropdownColor: kBlack,
              icon:
                  const Visibility(visible: false, child: Icon(Icons.arrow_downward)),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: kCircleB),
                labelText: 'Year',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  provider.selectMonthYear(newValue);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: 'list',
                  child: Text('list'),
                ),
              ],
              selectedItemBuilder: (BuildContext context) {
                return [
                  Text(
                    provider.selectMonth,
                    style: const TextStyle(color: kCircleB),
                  ),
                ];
              },
              style: const TextStyle(color: Kwhite),
            ),
          ),
            ElevatedButton.icon(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
            ),
            onPressed: () {},
            icon: const Icon(Icons.search),
            label: const Text('Search', style: TextStyle(color: kTopTextColor)),
          ),
        ],
      );
    });
  }
}
