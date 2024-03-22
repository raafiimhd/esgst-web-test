import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BankAccountWidgets extends StatelessWidget {
  const BankAccountWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                   SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Bank Name',
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
                      labelText: 'Account No',
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
                  child: DropdownButtonFormField<String>(
                    dropdownColor: kBlack,
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Account Type',
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
                        value: 'Current Account',
                        child: Text('Current Account'),
                      ),
                       DropdownMenuItem(
                        value: 'Recurring Deposite Account',
                        child: Text('Recurring Deposite Account'),
                      ),
                      DropdownMenuItem(
                        value: 'Salary Account',
                        child: Text('Salary Account'),
                      ),
                       DropdownMenuItem(
                        value: 'Fixed Deposite Account',
                        child: Text('Fixed Deposite Account'),
                      ),
                      DropdownMenuItem(
                        value: 'Demat Account',
                        child: Text('Demat Account'),
                      ),
                       DropdownMenuItem(
                        value: 'Over Draft',
                        child: Text('Over Draft'),
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
                )
             
              ],
            ),
            kHeight5,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'IFSC*',
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
                      labelText: 'Bank Branch',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                )
              ],
            ),
            kHeight10,
             ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
              ),
              onPressed: () {},
              child: const Text('Submit', style: TextStyle(color: kTopTextColor)),
            ),
                        kHeight10,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Bank Name'),
                kWidth10,
                Text('Account Number'),
                kWidth10,
                Text('Account Type'),
                kWidth10,
                Text('Branch Name'),
                kWidth10,
                Text('Status'),
                kWidth10,
                Text('View'),
                kWidth10,
                Text('Delete'),
              ],
            ),
            const Divider(color: kBlack),
          ],
        ),

      );
    });
  }
}