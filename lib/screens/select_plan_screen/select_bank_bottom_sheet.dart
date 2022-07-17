import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:cred_flutter_assignment/core/widgets/bottom_button.dart';
import 'package:cred_flutter_assignment/core/widgets/br.dart';
import 'package:flutter/material.dart';

class SelectBankBottomSheet extends StatelessWidget {
  const SelectBankBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Config.primaryBackgroundColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //...
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16, 16, 0),
            child: Text(
              "Where should we send the money??",
              style: Ts.demi20(Config.grayG1Color),
            ),
          ),

          const BR(8),

          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 16),
            child: Text(
              "Amount will be credited to this bank account. EMI will also be debited from this bank account",
              style: Ts.text15(Config.grayG2Color),
            ),
          ),

          const BR(30),

          _wBankTile(),

          const BR(20),

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
                "Change account",
                style: Ts.demi20(Config.grayG1Color),
              ),
            ),
          ),

          const Spacer(),

          BottomButton(
            onPressed: () {},
            title: "Tap for 1-click KYC",
          ),
        ],
      ),
    );
  }

  ListTile _wBankTile() {
    return ListTile(
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: Image.asset("assets/images/bank_logo.jpg"),
      ),
      title: Text(
        "HDFC Bank",
        style: Ts.bold18(Colors.white),
      ),
      subtitle: Text(
        "501XXX9546",
        style: Ts.demi15(Config.grayG1Color),
      ),
      trailing: const CircleAvatar(
        backgroundColor: Color(0xff3D404F),
        radius: 8,
        child: Icon(
          Icons.check,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
