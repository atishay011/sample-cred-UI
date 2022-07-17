import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:cred_flutter_assignment/core/widgets/bottom_button.dart';
import 'package:cred_flutter_assignment/core/widgets/br.dart';
import 'package:cred_flutter_assignment/screens/intro_screen/progress_indicator_card.dart';
import 'package:cred_flutter_assignment/screens/select_plan_screen/select_plan_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../global.dart';

import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final GlobalKey _scaffoldKey = GlobalKey();

  bool _isExpanded = true;

  AppBar _wAppbar() {
    return AppBar(
      backgroundColor: Config.primaryBackgroundColor,
      leading: const CircleAvatar(
        radius: 8,
        backgroundColor: Config.blackColor,
        child: Icon(
          size: 12,
          Icons.close,
          color: Colors.white,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            radius: 8,
            backgroundColor: Config.blackColor,
            child: Icon(
              size: 12,
              Icons.question_mark,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _onBtnPressed(BuildContext context) async {
    setState(() => _isExpanded = false);

    showBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.76,
        child: const SelectPlanScreen(),
      ),
    ).closed.whenComplete(() {
      setState(() => _isExpanded = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _wAppbar(),
      key: _scaffoldKey,
      body: Builder(
        builder: (ctx) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                elevation: 0,
                expansionCallback: (index, isExpanded) {
                  if (isExpanded) {
                    _onBtnPressed(ctx);
                  }

                  setState(() {
                    _isExpanded = !isExpanded;
                  });

                  if (!isExpanded) {
                    Navigator.pop(context);

                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  }
                },
                children: [
                  ExpansionPanel(
                    canTapOnHeader: true,
                    backgroundColor: Config.primaryBackgroundColor,
                    isExpanded: _isExpanded,
                    headerBuilder: (context, isExpanded) {
                      if (isExpanded) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
                              child: Text(
                                "nikunj how much do you need?",
                                style: Ts.demi20(Config.grayG1Color),
                              ),
                            ),

                            const BR(8),

                            //...
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                'Move the dial and select the amount you need upto ${RUPPEES_LOGO}487,891',
                                style: Ts.text15(Config.grayG2Color),
                              ),
                            ),
                          ],
                        );
                        //...
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              "Credit amount",
                              style: Ts.demi20(Config.grayG1Color),
                            ),
                          ),

                          const BR(8),

                          //...
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              '${RUPPEES_LOGO}150,000',
                              style: Ts.text15(Config.grayG2Color),
                            ),
                          ),
                        ],
                      );
                    },
                    body: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: const ProgressIndicatorCard(),
                    ),
                  ),
                ],
              ),

              const Spacer(),

              //...
              BottomButton(
                onPressed: () => _onBtnPressed(ctx),
                title: "Proceed to EMI selection",
              ),
            ],
          );
        },
      ),
    );
  }
}
