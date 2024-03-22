
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/widgets/side_bar_items_widget.dart';
import 'package:ecgst_web_test/view/widgets/menu_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class RightSideBarWidgets extends StatelessWidget {
  const RightSideBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, provider, child) {
      return SizedBox(
        width: 300,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeight60,
                MenuButtonWidget(
                  name: 'GST',
                  items: const ['ANNEXURE1', 'ANNEXURE2', 'PMT 08', 'GSTR'],
                  onItemSelected: (value) {
                    context.read<HomeProvider>().setTitle(value);
                  },
                ),
                kHeight20,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SidebarMenuItem(text: 'Day book', onTap: (){
                     provider.setTitle('Day Book');
                      provider.setSelectDayBook();
                  }),
                ),
                kHeight20,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SidebarMenuItem(text: 'Stock Details', onTap: (){
                     provider.setTitle('Stock Details');
                      provider.setSelectStockSelect();
                  }),
                ),
                kHeight20,
                MenuButtonWidget(name: 'Register', items: const ['Sales','Purchase','Outstanding'], onItemSelected: (value){
                  provider.setTitle(value);
                })   ,
                kHeight20,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SidebarMenuItem(text: 'Cash Account', onTap: (){
                     provider.setTitle('Cash Account');
                  }),
                ),
                   kHeight20,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SidebarMenuItem(text: 'Bank Account', onTap: (){
                     provider.setTitle('Bank Account');
                  }),
                ),
                kHeight20,
                MenuButtonWidget(name: 'Ledger', items: const ['Date','Month','Year'], onItemSelected: (value){}),
                kHeight20,
                 MenuButtonWidget(name: 'Duties and Tax', items: const ['Date','Month','Year'], onItemSelected: (value){}),
                 kHeight20,
                  MenuButtonWidget(name: 'Summery', items: const ['Date','Month','Year'], onItemSelected: (value){})
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kHeight40,
                  ..._buildMenuItems(
                    [
                      'Trading',
                      'Profit & Loss',
                      'Trial Balance',
                      'Balance Sheet',
                    ],
                    provider,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  List<Widget> _buildMenuItems(List<String> texts, HomeProvider provider) {
    return texts
        .map((text) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: SidebarMenuItem(
                text: text,
                onTap: () {
                },
              ),
            ))
        .toList();
  }
}
