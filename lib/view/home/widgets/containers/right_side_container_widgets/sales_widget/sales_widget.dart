import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';

class SalesWidget extends StatelessWidget {
  const SalesWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: DropdownButtonFormField<String>(
                    dropdownColor: kBlack,
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
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
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
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
            ),
            Padding(
  padding: const EdgeInsets.all(8.0),
  child: Table(
  border: TableBorder.all(color: Kwhite),
  children: [
    TableRow(
      children: [
        TableCell(
          child: Container(
            height: 80,
            color: kBlack,
            alignment: Alignment.center,
            child: Text(
              'Particular',
              style: TextStyle(
                color: Kwhite,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        TableCell(
          child: Container(
            width: 100,
            height: 80,
            color: kBlack,
            alignment: Alignment.center,
            child: Text(
              'Ec File Solution\n01 April 2023-31 March 2024',
              style: TextStyle(
                color: Kwhite,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        TableCell(child: Container(height: 80,color: kBlack,)),
        TableCell(child: Container(height: 80,color: kBlack,))
      ],
    ),
    TableRow(
      children: [
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
            child: Text('Month'),
          ),
        ),
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
            alignment: Alignment.center,
            child: Text(
              'Transaction',
              style: TextStyle(
                color: Kwhite,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
          ),
        ),
        Container(height: 40,color: kBlack,)
      ],
    ),
     TableRow(
      children: [
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
          ),
        ),
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
            alignment: Alignment.center,
            child: Text(
              'Transaction',
              style: TextStyle(
                color: Kwhite,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
        TableCell(
          child: Container(
            height: 40,
            color: kBlack,
          ),
        ),
        Container(height: 40,color: kBlack,)
      ],
    ),
  ],
),

),

          ],
        );
      },
    );
  }
}
