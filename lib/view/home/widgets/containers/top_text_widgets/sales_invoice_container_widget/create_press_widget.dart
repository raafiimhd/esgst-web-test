import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreatePressWidget extends StatelessWidget {
  const CreatePressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, model, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'GST No. :*',
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
                      labelText: 'Company/Client Name *',
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
                      labelText: 'Customer Type',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        model.createSelectedOne(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Compensation',
                        child: Text('Compensation'),
                      ),
                      DropdownMenuItem(
                        value: 'UIN',
                        child: Text('UIN'),
                      ),
                      DropdownMenuItem(
                        value: 'Exempted',
                        child: Text('Exempted'),
                      ),
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        Text(
                          model.createCompesationDrop,
                          style: const TextStyle(color: kCircleB),
                        ),
                      ];
                    },
                    style: const TextStyle(color: Kwhite),
                  ),
                ),
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Email:',
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
                      labelText: 'GST No. :*',
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
                      labelText: 'Phone*',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Address :*',
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
                      labelText: 'City :*',
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
                      labelText: 'State :*',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            kHeight10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      style: const TextStyle(color: kCircleB),
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: kCircleB),
                        labelText: 'Country :*',
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
                        labelText: 'Zip/Posttal:*',
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
                          labelText: 'INR',
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            model.createSelectedTwo(newValue);
                          }
                        },
                        items: const [
                          DropdownMenuItem(
                            value: 'INR',
                            child: Text('INR'),
                          ),
                          DropdownMenuItem(
                            value: 'USD',
                            child: Text('USD'),
                          ),
                        ],
                        selectedItemBuilder: (BuildContext context) {
                          return [
                            Text(
                              model.createCashTypeDrop,
                              style: const TextStyle(color: kCircleB),
                            ),
                          ];
                        },
                        style: const TextStyle(color: Kwhite),
                      ),
                    ),
                ],
              ),
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
             SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: kCircleB),
                        labelText: 'Search',
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        suffixIcon: const Icon(Icons.search)
                      ),
                    ),
                  ),
                  kHeight10,
                   const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Customer Name'),
                kWidth10,
                Text('Customer Bussiness Type'),
                kWidth10,
                Text('Email'),
                kWidth10,
                Text('Phone'),
                kWidth10,
                Text('GST No.'),
              ],
            ),
            const Divider(color: kBlack),
          ],
        );
      },
    );
  }
}
