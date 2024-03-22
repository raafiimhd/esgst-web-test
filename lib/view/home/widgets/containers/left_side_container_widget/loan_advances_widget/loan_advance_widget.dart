import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoanAdavanceWidget extends StatelessWidget {
  const LoanAdavanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250,
                    child: DropdownButtonFormField<String>(
                      dropdownColor: kBlack,
                      icon: const Visibility(
                          visible: false, child: Icon(Icons.arrow_downward)),
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: kCircleB),
                        labelText: 'Loan Type',
                        hintStyle: const TextStyle(color: kCircleB),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          provider.setItemType(newValue);
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
                            provider.itemTypeSelect,
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
                        labelText: 'Select Type',
                        hintStyle: const TextStyle(color: kCircleB),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          provider.setItemType(newValue);
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
                            provider.itemTypeSelect,
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
                        labelText: 'Name',
                        hintStyle: const TextStyle(color: kCircleB),
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          provider.setItemType(newValue);
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
                            provider.itemTypeSelect,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(
            width: 250,
            child: TextFormField(
              style: const TextStyle(color: kCircleB),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: kCircleB),
                labelText: 'Amount*',
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
                labelText: 'Rate of Internet*',
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
                labelText: 'Tenure*',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               SizedBox(
            width: 250,
            child: TextFormField(
              style: const TextStyle(color: kCircleB),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: kCircleB),
                labelText: 'EMI*',
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
                labelText: 'Total Amount*',
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
              initialValue: '2024-03-20',
              style: const TextStyle(color: kCircleB),
              decoration: InputDecoration(
                labelStyle: const TextStyle(color: kCircleB),
                labelText: 'Date*',
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
