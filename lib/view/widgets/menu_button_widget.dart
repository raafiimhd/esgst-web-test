import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({
    super.key,
    required this.name,
    required this.items,
    required this.onItemSelected,
  });

  final String name;
  final List<String> items;
  final Function(String) onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        final bool isExpanded = provider.isExpanded(name);
        return Column(
          children: [
            InkWell(
              onTap: () {
                provider.toggleExpansion(name);
              },
              child: Container(
                width: 170,
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: isExpanded ? kTopTextColor : kCircleB),
                      ),
                    ),
                    Icon(
                      isExpanded ? Icons.expand_less : Icons.expand_more,
                      color: kCircleB,
                    ),
                  ],
                ),
              ),
            ),
            if (isExpanded)
              Container(
                width: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kCircleB,
                    width: 1,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Kwhite,
                ),
                child: Column(
                  children: [
                    for (int i = 0; i < items.length; i++) ...[
                      if (items[i] == 'Outstanding')
                        MenuButtonWidget(
                          name: 'Outstanding',
                          items: const ['Supplier', 'Customer', 'Other'],
                          onItemSelected: (value) {
                            provider.setTitle(value);
                          },
                        )
                      else
                        InkWell(
                          onTap: () {
                            onItemSelected(items[i]);
                            if (items[i] == 'ANNEXURE1' ||
                                items[i] == 'ANNEXURE2') {
                              provider.showAnnextureOne();
                            } else if (items[i] == 'PMT 08') {
                              provider.setSelectMonth();
                            } else if (items[i] == 'Sales') {
                              provider.setShowSales();
                            } else {
                              provider.setShowDeveloping();
                            }
                            provider.toggleExpansion(name);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              items[i],
                              style: const TextStyle(fontSize: 16.0, color: kCircleB),
                            ),
                          ),
                        ),
                      if (i != items.length - 1)
                        const Divider(thickness: 0.1, color: kBlack),
                    ],
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
