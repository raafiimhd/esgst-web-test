import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/widgets/select_caledar_function.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnnextureOneWidget extends StatelessWidget {
  const AnnextureOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
                        labelText: 'User name',
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  kWidth10,
                  GestureDetector(
                    onTap: () => selectDate(context, provider),
                    child: AbsorbPointer(
                      child: SizedBox(
                        width: 250,
                        child: TextFormField(
                          controller: provider.textEditingController,
                          style: const TextStyle(color: kCircleB),
                          decoration: InputDecoration(
                            labelText: 'Start Date',
                            labelStyle: const TextStyle(color: kCircleB),
                            suffixIcon: const Icon(Icons.calendar_today),
                            suffixIconColor: kCircleB,
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          readOnly: true,
                          onTap: () => selectDate(context, provider),
                        ),
                      ),
                    ),
                  ),
                  kWidth10,
                  GestureDetector(
                    onTap: () => selectDate(context, provider),
                    child: AbsorbPointer(
                      child: SizedBox(
                        width: 250,
                        child: TextFormField(
                          controller: provider.textEditingController,
                          style: const TextStyle(color: kCircleB),
                          decoration: InputDecoration(
                            labelText: 'End Date',
                            labelStyle: const TextStyle(color: kCircleB),
                            suffixIcon: const Icon(Icons.calendar_today),
                            suffixIconColor: kCircleB,
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          readOnly: true,
                          onTap: () => selectDate(context, provider),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kHeight10,
              Row(
                children: [
                  Row(
                    children: [
                      ElevatedButton.icon(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(kBlack),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                        label: const Text('Search',
                            style: TextStyle(color: kTopTextColor)),
                      ),
                      kWidth10,
                      ElevatedButton.icon(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(kBlack),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.restart_alt),
                        label: const Text('Reset',
                            style: TextStyle(color: kTopTextColor)),
                      ),
                    ],
                  ),
                  kWidth350,
                  Row(
                    children: [
                      SizedBox(
                        width: 250,
                        child: DropdownButtonFormField<String>(
                          dropdownColor: kBlack,
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          decoration: InputDecoration(
                            labelStyle: const TextStyle(color: kCircleB),
                            labelText: 'Download type',
                            contentPadding: EdgeInsets.zero,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              provider.selectExcelFun(newValue);
                            }
                          },
                          items: const [
                            DropdownMenuItem(
                              value: 'Select',
                              child: Text('Select'),
                            ),
                            DropdownMenuItem(
                              value: 'Json',
                              child: Text('Json'),
                            ),
                            DropdownMenuItem(
                              value: 'Excel',
                              child: Text('Excel'),
                            ),
                          ],
                          selectedItemBuilder: (BuildContext context) {
                            return [
                              Text(
                                provider.selectExcel,
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
                        onPressed: () {},
                        icon: const Icon(
                          Icons.download,
                          size: 12,
                        ),
                        label: const Text('Go',
                            style:
                                TextStyle(color: kTopTextColor, fontSize: 10)),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
