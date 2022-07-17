import 'package:cred_flutter_assignment/core/theme/style.dart';
import 'package:cred_flutter_assignment/screens/intro_screen/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      builder: (context , _) {
        return MaterialApp(
          title: 'CRED Flutter Assignment',
          theme: ThemeUtils.defaultAppThemeData,
          debugShowCheckedModeBanner: false,
          home:  IntroScreen(),
        );
      }
    );
    
  }
}