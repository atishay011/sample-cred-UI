import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:cred_flutter_assignment/core/widgets/bh.dart';
import 'package:cred_flutter_assignment/core/widgets/br.dart';
import 'package:cred_flutter_assignment/screens/select_plan_screen/models/plans_list_tile_model.dart';

import 'package:flutter/material.dart';

import '../../global.dart';

class PlansList extends StatelessWidget {
  const PlansList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PlansListTile(
          plansListTileModel: plansList[index],
        ),
        separatorBuilder: (context, index){
          if(index == plansList.length -1){
            return const BH(16);
          }
          return Container();
        },
        itemCount: plansList.length,
      ),
    );
  }
}

class PlansListTile extends StatelessWidget {
  final PlansListTileModel plansListTileModel;
  const PlansListTile({
    Key? key,
    required this.plansListTileModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        decoration: BoxDecoration(
          color: plansListTileModel.color,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "$RUPPEES_LOGO${plansListTileModel.amount}",
                    style: Ts.demi20(Colors.white),
                  ),

                  //...
                  Text(
                    " / mo",
                    style: Ts.demi15(Config.grayG2Color),
                  )
                ],
              ),
              const BR(10),

              //...
              Text(
                "for ${plansListTileModel.duration} months",
                style: Ts.text15(Config.grayG2Color),
              ),


              const BR(20),

              //...
              Text(
                "See calculations",
                style: Ts.text15(Config.grayG1Color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
