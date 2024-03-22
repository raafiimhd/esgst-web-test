import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/widgets/elevated_button_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'MASTER',
                style: topTextStyle,
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeProvider>().toggleShowInvoices();
                },
                child: const Text(
                  'INVOICES',
                  style: topTextStyle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeProvider>().toggleShowEstimates();
                },
                child: const Text(
                  'ESTIMATES',
                  style: topTextStyle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeProvider>().toggleShowIncome();
                },
                child: const Text(
                  'INCOME',
                  style: topTextStyle,
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<HomeProvider>().toggleShowVouchers();
                },
                child: const Text(
                  'VOUCHERS',
                  style: topTextStyle,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    context.read<HomeProvider>().toggleShowCashBank();
                  },
                  child: const Text(
                    'CASH/BANK',
                    style: topTextStyle,
                  )),
              GestureDetector(
                onTap: () {
                  context.read<HomeProvider>().toggleShowPayroll();
                },
                child: const Text(
                  'PAYROLL',
                  style: topTextStyle,
                ),
              ),
              const Text(
                'REPORT',
                style: topTextStyle,
              ),
              const Text(
                'FINAL AC',
                style: topTextStyle,
              ),
            ],
          ),
          SizedBox(
            width: 740,
            child: Consumer<HomeProvider>(
              builder: (context, model, child) {
                if (model.showInvoices) {
                  return _buildInvoiceButtons(context);
                } else if (model.showEstimates) {
                  return _buildEstimateButtons(context);
                } else if (model.showIncome) {
                  return _buildIncomeButtons(context);
                } else if (model.showVouchers) {
                  return _buildVoucherButtons(context);
                } else if (model.showCashBank) {
                  return _buildCashBankButtons(context);
                } else if (model.showPayroll) {
                  return _buildPayrollButtons(context);
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          kHeight10,
          const Text(
            'MASTER',
            style: topTextStyle,
          ),
          _buildNavItem(context, 'INVOICES'),
          _buildNavItem(context, 'ESTIMATES'),
          _buildNavItem(context, 'INCOME'),
          _buildNavItem(context, 'VOUCHERS'),
          _buildNavItem(context, 'CASH/BANK'),
          _buildNavItem(context, 'PAYROLL'),
          const Text(
            'REPORT',
            style: topTextStyle,
          ),
          const Text(
            'FINAL AC',
            style: topTextStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case 'INVOICES':
            context.read<HomeProvider>().toggleShowInvoices();
            break;
          case 'ESTIMATES':
            context.read<HomeProvider>().toggleShowEstimates();
            break;
          case 'INCOME':
            context.read<HomeProvider>().toggleShowIncome();
            break;
          case 'VOUCHERS':
            context.read<HomeProvider>().toggleShowVouchers();
            break;
          case 'CASH/BANK':
            context.read<HomeProvider>().toggleShowCashBank();
            break;
          case 'PAYROLL':
            context.read<HomeProvider>().toggleShowPayroll();
            break;
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          title,
          style: topTextStyle,
        ),
      ),
    );
  }
}

Widget _buildInvoiceButtons(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButtonWidget(
              onPressed: () {
                context.read<HomeProvider>().setTitle('Sales Invoice');
                context.read<HomeProvider>().toggleShowSalesInvoice();
              },
              name: 'Sales Invoice'),
          kWidth30,
          ElevatedButtonWidget(
              onPressed: () {
                context.read<HomeProvider>().setTitle('Delivery Chellan');
                context.read<HomeProvider>().setShowDeliveryChallen();
              },
              name: 'Delivery Chellan'),
          kWidth30,
          ElevatedButtonWidget(
              onPressed: () {
                context
                    .read<HomeProvider>()
                    .setTitle('Credit Note(Sales Return)');
                context.read<HomeProvider>().setShowCredits();
              },
              name: 'Credit Note(Sales Return)'),
          kWidth30,
          ElevatedButtonWidget(
              onPressed: () {
                context.read<HomeProvider>().setTitle('Purchase Invoice');
                context.read<HomeProvider>().setShowDeveloping();
              },
              name: 'Purchase Invoice'),
        ],
      ),
      kWidth100,
      ElevatedButtonWidget(
          onPressed: () {
            context
                .read<HomeProvider>()
                .setTitle('Debit Note(Purchase Return)');
            context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Debit Note(Purchase Return)'),
    ],
  );
}

Widget _buildEstimateButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Pro-forma');
            context.read<HomeProvider>().toggleShowSalesInvoice();
          },
          name: 'Pro-forma'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Estimates');
            context.read<HomeProvider>().toggleShowSalesInvoice();
          },
          name: 'Estimates'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Purchase Order');
            context.read<HomeProvider>().toggleShowSalesInvoice();
          },
          name: 'Purchase Order'),
    ],
  );
}

Widget _buildIncomeButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Income');
            context.read<HomeProvider>().showIncomeWidgetss();
          },
          name: 'Income'),
    ],
  );
}

Widget _buildVoucherButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('payment');
            context.read<HomeProvider>().showPayments();
          },
          name: 'payment'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Receipt');
            context.read<HomeProvider>().setSelectRecipnt();
          },
          name: 'Receipt'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Journal(Expense)');
            context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Journal(Expense)'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Contra');
             context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Contra'),
    ],
  );
}

Widget _buildCashBankButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Cash');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Cash'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Bank');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Bank'),
    ],
  );
}

Widget _buildPayrollButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Employee');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Employee'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Attendance');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Attendance'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('Salary');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'Salary'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('PF');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'PF'),
      kWidth30,
      ElevatedButtonWidget(
          onPressed: () {
            context.read<HomeProvider>().setTitle('ESI');
                context.read<HomeProvider>().setShowDeveloping();
          },
          name: 'ESI'),
    ],
  );
}
