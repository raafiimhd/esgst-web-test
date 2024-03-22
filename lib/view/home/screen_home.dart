
import 'package:ecgst_web_test/controller/home_screen_provider/home_screen_provider.dart';
import 'package:ecgst_web_test/view/home/widgets/container_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/right_side_bar_items.dart';
import 'package:ecgst_web_test/view/home/widgets/start_text_widget.dart';
import 'package:ecgst_web_test/view/home/widgets/top_texts_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecgst_web_test/constants/color/color.dart';
import 'package:provider/provider.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 34, 33, 33),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: TopTextWidget(),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: StartTextWidget(),
                      ),
                      
                       Expanded(child: Padding(
                         padding:const EdgeInsetsDirectional.only(top: 90),
                         child: Container(
                          height: 650,
                         decoration: BoxDecoration(
                             color: Kwhite,
                             borderRadius: BorderRadius.circular(20)
                         ),
                          child: Consumer<HomeProvider>(builder: (context, value, child) => ContainerWidget(title: value.title),)),
                       )),
                        const SizedBox(
                          width: 350,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                        RightSideBarWidgets()
                            ],
                          ),
                        ),
                    ],
                  ),
                  
                  const Positioned(
                    top: 15,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: kCircleB,
                          child: Icon(
                            Icons.person,
                            color: kCircleIcon,
                          ),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          backgroundColor: kCircleB,
                          child: Icon(
                            Icons.notifications,
                            color: kCircleIcon,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
