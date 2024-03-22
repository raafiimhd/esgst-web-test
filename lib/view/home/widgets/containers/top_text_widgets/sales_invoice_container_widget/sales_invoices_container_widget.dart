import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/sales_invoice_container_widget/create_press_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalesInvoiceContainerWidget extends StatelessWidget {
  const SalesInvoiceContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, model, child) {
      if (model.showCreateContants) {
        return const CreatePressWidget();
      } else {
        return Column(  
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Invoice Number: null',
                      style: TextStyle(color: kCircleB)),
                  Text('Invoice Data: 16/03/2024',
                      style: TextStyle(color: kCircleB)),
                ],
              ),
            ),
            kHeight10,
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
                      labelText: 'Select',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        model.setSelectedValue(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Hello World',
                        child: Text('Hello World'),
                      ),
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        Text(
                          model.selectTextDrop,
                          style: const TextStyle(color: kCircleB),
                        ),
                      ];
                    },
                    style: const TextStyle(color: Kwhite),
                  ),
                ),
                kWidth10,
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(kBlack),
                  ),
                  icon: const Icon(Icons.person_add_alt, color: kTopTextColor),
                  label: const Text('Create',
                      style: TextStyle(color: kTopTextColor)),
                  onPressed: () {
                    model.setTitle('Customer');
                    model.createContantList();
                  },
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
                      labelText: 'Enter bank details',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onChanged: (value) {
                      if (value != null) {
                        model.setSelectedBankDrop(value);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                          value: 'HDFC',
                          child: Text(
                            'HDFC',
                            style: TextStyle(color: kCircleB),
                          ))
                    ],
                  ),
                )
              ],
            ),
            kWidth30,
            const Padding(
              padding: EdgeInsets.only(left: 90),
              child: Text(
                'Place of Supply (POS)',
                style: TextStyle(color: kCircleB),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 90),
              child: Text(
                'Others',
                style: TextStyle(color: kCircleB),
              ),
            ),
            kHeight10,
            const Divider(color: kBlack),
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
                      labelText: 'Notify Party Address',
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
                    autofocus: false,
                    dropdownColor: kBlack,
                    icon: const Visibility(
                        visible: false, child: Icon(Icons.arrow_downward)),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Mode of Payement',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    value: model.selectCashDrop,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        model.setSelectedValue(newValue);
                      }
                    },
                    items: const [
                      DropdownMenuItem(
                        value: 'Cash',
                        child: Text('Cash'),
                      ),
                      DropdownMenuItem(value: 'Online',child: Text('Online')),
                      DropdownMenuItem(value: 'Credit',child: Text('Credit'),)
                    ],
                    selectedItemBuilder: (BuildContext context) {
                      return [
                        Text(
                          model.selectCashDrop,
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
                      labelText: 'Payment Terms',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 15),
                  child: Text(
                    'Days',
                    style: TextStyle(color: kCircleB),
                  ),
                ),
              ],
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                kWidth10,
                SizedBox(
                  width: 250,
                  child: TextFormField(
                    style: const TextStyle(color: kCircleB),
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'DC No',
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
                        labelText: 'DC Date',
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
              style: const ButtonStyle(              backgroundColor: MaterialStatePropertyAll<Color>(kBlack),
              ),
              onPressed: () {},
              child: const Text('Add Items', style: TextStyle(color: kTopTextColor)),
            ),
            kHeight10,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        );
      }
    });
  }
}
