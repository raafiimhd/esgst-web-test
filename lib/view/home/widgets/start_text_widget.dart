import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/widgets/side_bar_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:provider/provider.dart';

class StartTextWidget extends StatelessWidget {
  const StartTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SidebarMenuItem(
              text: 'Customer',
              onTap: () {
                context.read<HomeProvider>().setTitle('Customer');
                context.read<HomeProvider>().createContantList();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Supplier',
              onTap: () {
                context.read<HomeProvider>().setTitle('Supplier');
                context.read<HomeProvider>().createContantList();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Ledger',
              onTap: () {
                context.read<HomeProvider>().setTitle('Ledger');
                context.read<HomeProvider>().createContantList();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Item Type',
              onTap: () {
                context.read<HomeProvider>().setTitle('Item Type');
                context.read<HomeProvider>().setShowItemType();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Item Name',
              onTap: () {
                context.read<HomeProvider>().setTitle('Item Name');
                context.read<HomeProvider>().setItemName();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Stock Opening',
              onTap: () {
                   context.read<HomeProvider>().setTitle('Stock Opening');
                   context.read<HomeProvider>().stockOpening();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Bank Account',
              onTap: () {
                context.read<HomeProvider>().setTitle('Bank Account');
                
                context.read<HomeProvider>().showBankAccounts();
              },
            ),
            kHeight20,
            SidebarMenuItem(
              text: 'Loan/Advances',
              onTap: () {
                context.read<HomeProvider>().setTitle('Loan/Advances');
                context.read<HomeProvider>().showLoanAdvance();
              },
            ),
          ],
        ),
      ),
    );
  }
}
