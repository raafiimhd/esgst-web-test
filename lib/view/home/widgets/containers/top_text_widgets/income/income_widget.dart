import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IncomeWidgets extends StatelessWidget {
  const IncomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
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
                    labelText: 'Others*',
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
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Invoice No',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Invoice Date',
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Basic Amount',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Receievable Amount*',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Description',
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
          SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Income type',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              kHeight5,
                 ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
            ),
            onPressed: () {},
            child:
                const Text('Submit', style: TextStyle(color: kTopTextColor)),
          ),
        ],
      );
    });
  }
}
