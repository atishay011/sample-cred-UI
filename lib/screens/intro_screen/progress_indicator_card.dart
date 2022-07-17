import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:flutter/material.dart';
import '../../global.dart';
import 'package:cred_flutter_assignment/core/services/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProgressIndicatorCard extends StatefulWidget {
  const ProgressIndicatorCard({Key? key}) : super(key: key);

  @override
  State<ProgressIndicatorCard> createState() => _ProgressIndicatorCardState();
}

class _ProgressIndicatorCardState extends State<ProgressIndicatorCard> {
  double _value = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),

          //...
          _wRadialGauge(),

          //...
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Stash is instant, money will be credited within seconds",
              textAlign: TextAlign.center,
              style: Ts.text17(Config.grayG2Color),
            ),
          )
        ],
      ),
    );
  }

  Widget _wradialInfo() {
    double amount = _value / 100 * 487891;

    return Column(
      children: [
        Text(
          "Credit amount",
          style: Ts.demi15(Config.grayG2Color),
        ),
        Text(
          "$RUPPEES_LOGO${formatPhoneNumber(amount)}",
          style: Ts.bold20(Colors.black),
        ),
        Text(
          "1.04% Monthly",
          style: Ts.bold11(Colors.green),
        )
      ],
    );
  }

  Widget _wRadialGauge() {
    return SizedBox(
      height: 300.h,
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 100,
            startAngle: 270,
            endAngle: 270,
            showLabels: false,
            showTicks: false,
            radiusFactor: 0.6,
            axisLineStyle: const AxisLineStyle(cornerStyle: CornerStyle.bothFlat, color: Colors.black12, thickness: 12),
            pointers: <GaugePointer>[
              RangePointer(
                value: _value,
                cornerStyle: CornerStyle.bothFlat,
                width: 12.w,
                sizeUnit: GaugeSizeUnit.logicalPixel,
                color: Color(0xffCF8C71),
              ),
              MarkerPointer(
                value: _value,
                enableDragging: true,
                onValueChanged: (val) {
                  setState(() => _value = val);
                },
                markerHeight: 20.h,
                markerWidth: 20.w,
                markerType: MarkerType.image,
                color: Config.blackColor,
                borderWidth: 2,
                borderColor: Colors.white54,
              )
            ],
            annotations: <GaugeAnnotation>[
              GaugeAnnotation(
                angle: 90,
                axisValue: 5,
                positionFactor: 1.6,
                widget: _wradialInfo(),
              )
            ],
          )
        ],
      ),
    );
  }
}
