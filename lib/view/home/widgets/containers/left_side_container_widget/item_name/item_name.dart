import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemNameWidget extends StatelessWidget {
  const ItemNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    labelText: 'Item Type',
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
                    DropdownMenuItem(
                      value: 'No Data',
                      child: Text('No Data'),
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
              SizedBox(
                width: 250,
                child: TextFormField(
                  style: const TextStyle(color: kCircleB),
                  decoration: InputDecoration(
                    labelStyle: const TextStyle(color: kCircleB),
                    labelText: 'Item Name*',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: RadioListTile<int>(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                  activeColor: Colors.purple,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text('Exempted',style: TextStyle(color: kCircleB),),
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
                    labelText: 'Item Number',
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
                    labelText: 'Model Number',
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
                      provider.setSacSelect(newValue);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'SELECT',
                      child: Text('SELECT'),
                    ),
                    DropdownMenuItem(
                      value: 'HSC',
                      child: Text('HSC'),
                    ),
                    DropdownMenuItem(
                      value: 'SAC',
                      child: Text('SAC'),
                    ),
                  ],
                  selectedItemBuilder: (BuildContext context) {
                    return [
                      Text(
                        provider.sacSelect,
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
                    labelText: 'GST Tax',
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      provider.setGstTaxSelect(newValue);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: '0',
                      child: Text('0'),
                    ),
                    DropdownMenuItem(
                      value: '3',
                      child: Text('3'),
                    ),
                    DropdownMenuItem(
                      value: '6',
                      child: Text('6'),
                    ),
                    DropdownMenuItem(
                      value: '12',
                      child: Text('12'),
                    ),
                    DropdownMenuItem(
                      value: '18',
                      child: Text('18'),
                    ),
                    DropdownMenuItem(
                      value: '28',
                      child: Text('28'),
                    ),
                  ],
                  selectedItemBuilder: (BuildContext context) {
                    return [
                      Text(
                        provider.gstTaxSelect,
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
                    labelText: 'Cess',
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
                    labelText: 'Unit',
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
                    labelText: 'Sales unit Price(INR)',
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
                    labelText: 'Purchase unit Price(INR)',
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
                    labelText: 'Discount Type',
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
          Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Row(
              children: [
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Discount(%)',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                kWidth50,
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
          )
        ],
      );
    });
  }
}
