import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DeliveryChallenWidgets extends StatelessWidget {
  const DeliveryChallenWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, model, child) {
      if (model.showCreateContants) {
        return Container();
      } else {
        return Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Delivery Challen Date: null',
                    style: TextStyle(color: kCircleB)),
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
                  ),
                  icon: const Icon(Icons.person_add_alt, color: kTopTextColor),
                  label: const Text('Create', style: TextStyle(color: kTopTextColor)),
                  onPressed: () {},
                ),
              ],
            ),
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
                    labelText: 'Delivery Challen Date',
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
                    labelText: 'Select Customer',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      model.setSelectCustomer(newValue);
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
                        model.selectCustomer,
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
                  icon: const Visibility(
                      visible: false, child: Icon(Icons.arrow_downward)),
                  dropdownColor: kBlack,
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Bank details',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      model.setSelectBank(value);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                        value: 'List',
                        child: Text(
                          'List',
                          style: TextStyle(color: kCircleB),
                        ))
                  ],
                ),
              )
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
                    labelText: 'NOTIFY PARTY ADDRESS ',
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
                    labelText: 'Purchase Order No',
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
                    labelText: 'Purchase Order Date',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          kHeight20,
          Padding(
            padding: const EdgeInsets.only(left:34),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Vehicle No.',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
            child:
                const Text('Add Items', style: TextStyle(color: kTopTextColor)),
          ),
        ]);
      }
    });
  }
}
