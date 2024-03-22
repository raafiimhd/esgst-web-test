import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PaymentWidgets extends StatelessWidget {
  const PaymentWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Column(
        children: [
           const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Voucher No: null',
                      style: TextStyle(color: kCircleB)),
                  Text('Voucher Data: 19/03/2024',
                      style: TextStyle(color: kCircleB)),
                       Text('Outstanding:',
                      style: TextStyle(color: kCircleB)),
                ],
              ),
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
                    labelText: 'Name/id',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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
                    labelText: 'Select',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      provider.payementSelect(newValue);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'Select',
                      child: Text('Select'),
                    ),
                      DropdownMenuItem(
                      value: 'Against',
                      child: Text('Against'),
                    ),
                      DropdownMenuItem(
                      value: 'Towards',
                      child: Text('Towards'),
                    ),
                  ],
                  selectedItemBuilder: (BuildContext context) {
                    return [
                      Text(
                        provider.paymentSelect,
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
                    labelText: 'Select',
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
            ],
          ),
          kHeight5,
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
                    labelText: 'Have GST?',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      provider.gstSelects(newValue);
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
                        provider.gstSelect,
                        style: const TextStyle(color: kCircleB),
                      ),
                    ];
                  },
                  style: const TextStyle(color: Kwhite),
                ),
              ),
             const Text('Pending Amount:',
                      style: TextStyle(color: kCircleB)),
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Payable Amount*',
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
                child: DropdownButtonFormField<String>(
                  dropdownColor: kBlack,
                  icon: const Visibility(
                      visible: false, child: Icon(Icons.arrow_downward)),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Mode of payment',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      provider.payementSelect(newValue);
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
                        provider.paymentSelect,
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
                  maxLines: 3,
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
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
            ),
            onPressed: () {},
            child: const Text('Submit', style: TextStyle(color: kTopTextColor)),
          ),
        ],
      );
    });
  }
}
