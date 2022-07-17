import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:cred_flutter_assignment/core/widgets/bottom_button.dart';
import 'package:cred_flutter_assignment/core/widgets/br.dart';
import 'package:cred_flutter_assignment/screens/select_plan_screen/plans_list.dart';
import 'package:cred_flutter_assignment/screens/select_plan_screen/select_bank_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../global.dart';

class SelectPlanScreen extends StatefulWidget {
  const SelectPlanScreen({Key? key}) : super(key: key);

  @override
  State<SelectPlanScreen> createState() => _SelectPlanScreenState();
}

class _SelectPlanScreenState extends State<SelectPlanScreen> {
  bool _isExpanded = true;

  void _onBtnPressed(BuildContext context) {
    setState(() => _isExpanded = false);

    showBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.65,
        child: const SelectBankBottomSheet(),
      ),
    ).closed.whenComplete(() {
      setState(() => _isExpanded = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (ctx) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Config.primaryBackgroundColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
                  }
                },
                children: [
                  ExpansionPanel(
                    canTapOnHeader: true,
                    backgroundColor: Config.primaryBackgroundColor,
                    isExpanded: _isExpanded,
                    headerBuilder: ((context, isExpanded) {
                      if (isExpanded) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //...
                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
                              child: Text(
                                "How do you wish to repay?",
                                style: Ts.demi20(Config.grayG1Color),
                              ),
                            ),

                            const BR(8),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                              child: Text(
                                "Choose one of our recommended plans or make your own",
                                style: Ts.text15(Config.grayG2Color),
                              ),
                            ),
                          ],
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //...
                                Text(
                                  "EMI",
                                  style: Ts.demi15(Config.grayG1Color),
                                ),

                                //...
                                Text(
                                  "Duration         ",
                                  style: Ts.demi15(Config.grayG1Color),
                                ),
                              ],
                            ),
                          ),
                          BR(9),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //...
                                Text(
                                  "${RUPPEES_LOGO}5,197",
                                  style: Ts.bold20(Colors.white),
                                ),

                                //...
                                Text(
                                  "12 Months",
                                  style: Ts.demi20(Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }),
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BR(30),
                        const PlansList(),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Config.grayG1Color,
                                width: 1.0,
                              ),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Create your own plan",
                              style: Ts.demi20(Config.grayG1Color),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              BottomButton(
                onPressed: () => _onBtnPressed(ctx),
                title: "Select Bank Account",
              )
            ],
          ),
        );
      }),
    );
  }
}
