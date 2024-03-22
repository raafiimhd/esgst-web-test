import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:ecgst_web_test/constants/const.dart';
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CrediatesNotesWidgets extends StatelessWidget {
  const CrediatesNotesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, model, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 180,
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
                      model.setSelectCredit(newValue);
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'List',
                      child: Text('List'),
                    ),
                  ],
                  selectedItemBuilder: (BuildContext context) {
                    return [
                      Text(
                        model.selectCredit,
                        style: const TextStyle(color: kCircleB),
                      ),
                    ];
                  },
                  style: const TextStyle(color: Kwhite),
                ),
              ),
               SizedBox(
                  width: 180,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'Credit Note No',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  width: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'From',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                 SizedBox(
                  width: 100,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(color: kCircleB),
                      labelText: 'To',
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const CircleAvatar(
                  backgroundColor: kCircleB,
                  child: Icon(Icons.search,
                  color: Kwhite,),
                ),
                 const CircleAvatar(
                  backgroundColor: kCircleB,
                  child: Icon(Icons.rotate_left,
                  color: Kwhite,),
                )
            ],
          ),
          kHeight5,
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ElevatedButton.icon(style: const ButtonStyle(
                        
              backgroundColor:MaterialStatePropertyAll<Color>(kBlack), 
            ),onPressed: (){}, icon: const Icon(Icons.download,color: kTopTextColor,), label: const Text('Export',style: TextStyle(color: kTopTextColor),)),
          )
        ],
      );
    });
  }
}
