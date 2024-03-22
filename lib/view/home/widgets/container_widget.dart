import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/right_side_container_widgets/sales_widget/sales_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/Recepit_widgets/recepit_widgets.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/right_side_container_widgets/annexture_one/annexture_one_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/left_side_container_widget/bank_account/bank_account_widgets.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/cridit_notes/cridit_notes.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/right_side_container_widgets/day_book/day_book.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/delivery_challen_widgets/delivery_challen_widgets.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/developing_process_widget/developing_process_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/income/income_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/left_side_container_widget/item_name/item_name.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/left_side_container_widget/item_type_widget/item_type_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/left_side_container_widget/loan_advances_widget/loan_advance_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/payment_widgets/payment_widgets.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/right_side_container_widgets/pmt_widget/pmt_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/sales_invoice_container_widget/create_press_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/top_text_widgets/sales_invoice_container_widget/sales_invoices_container_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/right_side_container_widgets/stock_details/stock_details.dart';
import 'package:ecgst_web_test/view/home/widgets/containers/left_side_container_widget/stock_opening/stock_opening_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundColor: kBlack,
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(234, 241, 240, 240),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: kBlack,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Kwhite,
                  ),
                ),
              ],
            ),
            trailing: const CircleAvatar(
              backgroundColor: kBlack,
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Color.fromARGB(255, 233, 230, 230)),
            ),
          ),
          const Divider(color: kBlack),
          kHeight10,
          Consumer<HomeProvider>(
            builder: (context, model, child) {
              if (model.showSalesInvoices) {
                return const SalesInvoiceContainerWidget();
              } else if (model.showDeliveryChallen) {
                return const DeliveryChallenWidgets();
              } else if (model.showCredits) {
                return const CrediatesNotesWidgets();
              } else if (model.showIncomeWidget) {
                return const IncomeWidgets();
              } else if (model.showPayment) {
                return const PaymentWidgets();
              } else if (model.showReceipt) {
                return const RecepitWidgets();
              } else if (model.showProcessingScreen) {
                return const DevelopingProcessWidget();
              } else if (model.showCreateContants) {
                return const CreatePressWidget();
              } else if (model.showItemType) {
                return const ItemTypeWidget();
              } else if (model.showItemName) {
                return const ItemNameWidget();
              } else if (model.showStockOpening) {
                return const StockOpeningWidget();
              } else if (model.showBankAccount) {
                return const BankAccountWidgets();
              } else if (model.showLoan) {
                return const LoanAdavanceWidget();
              } else if (model.showAnnextureone) {
                return const AnnextureOneWidget();
              } else if (model.showMonthYear) {
                return const PmtWidget();
              } else if (model.showDayBook) {
                return const DaybookWidget();
              } else if (model.selectStockDetails) {
                return const StockDetailsWidget();
              } else if (model.showSales) {
                return const SalesWidget();
              }
              {
                return const CrediatesNotesWidgets();
              }
            },
          ),
        ],
      ),
    );
  }
}
