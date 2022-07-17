import 'package:cred_flutter_assignment/core/services/config.dart';
import 'package:cred_flutter_assignment/core/services/ts.dart';
import 'package:flutter/material.dart';

class ThemeUtils {
  static final ThemeData defaultAppThemeData = appTheme();

  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: 'AvenirNext',
      primaryColor: Config.primaryColor,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) => StadiumBorder())),
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      brightness: Brightness.dark,
      buttonTheme: ButtonThemeData(
        buttonColor: Config.primaryColor,
        textTheme: ButtonTextTheme.primary,
        shape: StadiumBorder(),
      ),
      scaffoldBackgroundColor: Config.primaryBackgroundColor,
      cardTheme: CardTheme(elevation: 5),
      canvasColor: Colors.black,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Config.primaryColor),
        titleTextStyle: Ts.bold15(Config.primaryColor),
      ),
      textTheme: const TextTheme(
        headline4: TextStyle(fontWeight: FontWeight.w900),
        headline5: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: Config.primaryColor,
          fontSize: 20,
        ),
        subtitle1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Config.primaryColor,
        ),
        subtitle2: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Config.primaryColor,
        ),
        bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        caption: TextStyle(
          fontSize: 13,
        ),
        button: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  static ThemeData brandTheme({
    required String fgColor,
    required String bgColor,
    required String secColor,
  }) {
    Color foregroundColor = Color((int.parse("0xFF${fgColor.replaceAll("#", "")}")));

    Color secondaryColor = Color((int.parse("0xFF${secColor.replaceAll("#", "")}")));

    Color backgroundColor = Color((int.parse("0xFF${bgColor.replaceAll("#", "")}")));

    return ThemeData(
      fontFamily: 'AvenirNext',
      primaryColor: foregroundColor,
      highlightColor: secondaryColor,
      buttonTheme: ButtonThemeData(
        buttonColor: secondaryColor,
        textTheme: ButtonTextTheme.primary,
        //  <-- this auto selects the right color
        shape: StadiumBorder(),
      ),
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: backgroundColor,
      cardTheme: CardTheme(elevation: 5),
      canvasColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: backgroundColor.withOpacity(0.8),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: secondaryColor,
        ),
        titleTextStyle: Ts.bold15(foregroundColor),
      ),
      pageTransitionsTheme: PageTransitionsTheme(builders: const {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      textTheme: TextTheme(
        headline4: TextStyle(fontWeight: FontWeight.w900),
        headline5: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: foregroundColor,
          fontSize: 20,
        ),
        subtitle1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: foregroundColor,
        ),
        subtitle2: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: foregroundColor,
        ),
        bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        caption: TextStyle(fontSize: 13, color: foregroundColor),
        button: TextStyle(fontWeight: FontWeight.bold),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryColor),
    );
  }

  static ThemeData homeBrandTheme({
    required String fgColor,
    required String bgColor,
    required String secColor,
  }) {
    Color foregroundColor = Color((int.parse("0xFF${fgColor.replaceAll("#", "")}")));

    Color secondaryColor = Color((int.parse("0xFF${secColor.replaceAll("#", "")}")));

    Color backgroundColor = Color((int.parse("0xFF${bgColor.replaceAll("#", "")}")));

    return ThemeData(
      fontFamily: 'AvenirNext',
      primaryColor: foregroundColor,
      highlightColor: secondaryColor,
      buttonTheme: ButtonThemeData(
        buttonColor: secondaryColor,
        textTheme: ButtonTextTheme.primary,
        //  <-- this auto selects the right color
        shape: StadiumBorder(),
      ),
      backgroundColor: backgroundColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: backgroundColor,
      cardTheme: CardTheme(elevation: 5),
      canvasColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: backgroundColor.withOpacity(0.8),
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: secondaryColor,
        ),
        titleTextStyle: Ts.bold15(foregroundColor),
      ),
      pageTransitionsTheme: PageTransitionsTheme(builders: const {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      textTheme: TextTheme(
        headline4: TextStyle(fontWeight: FontWeight.w900),
        headline5: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        headline6: TextStyle(
          fontWeight: FontWeight.bold,
          color: foregroundColor,
          fontSize: 20,
        ),
        subtitle1: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: foregroundColor,
        ),
        subtitle2: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: foregroundColor,
        ),
        bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        caption: TextStyle(fontSize: 13, color: foregroundColor),
        button: TextStyle(fontWeight: FontWeight.bold),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: secondaryColor),
    );
  }
}

TextStyle appBarTitleStyle(BuildContext context) => Theme.of(context).textTheme.subtitle2!.copyWith(
      color: Theme.of(context).primaryColor,
      fontSize: 17,
      fontWeight: FontWeight.bold,
    );

TextStyle textFieldLabelStyle(BuildContext context) => Theme.of(context).textTheme.caption!.copyWith(
      color: Theme.of(context).colorScheme.secondary,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );

TextStyle textFieldHintStyle(BuildContext context) => Theme.of(context).textTheme.caption!.copyWith(
      color: Theme.of(context).hintColor,
      fontWeight: FontWeight.normal,
      height: 3,
    );

TextStyle textFieldInputStyle(BuildContext context) => Theme.of(context).textTheme.caption!.copyWith(
      color: Theme.of(context).primaryColor,
      fontSize: 15,
      fontWeight: FontWeight.normal,
    );
