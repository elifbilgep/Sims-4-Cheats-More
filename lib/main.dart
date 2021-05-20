import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'controller/admob.dart';
import 'controller/fetch_data.dart';
import 'controller/fetch_mods.dart';
import 'view/Pages/login.dart';
import 'view/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AdMobService.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FetchData()),
        ChangeNotifierProvider(
          create: (_) => FetchMods(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
            textTheme: GoogleFonts.robotoTextTheme(textTheme).copyWith(
                headline1: GoogleFonts.nunito(
                    textStyle: textTheme.bodyText1,
                    fontSize: 75,
                    fontWeight: FontWeight.w700,
                    color: whiteHeadlineColor),
                headline2: GoogleFonts.roboto(
                    textStyle: textTheme.bodyText1,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: whiteHeadlineColor),
                headline3: GoogleFonts.nunito(
                    textStyle: textTheme.bodyText1,
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    color: greenDark1),
                headline4: GoogleFonts.nunito(
                    textStyle: textTheme.bodyText1,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: greenDark2),
                bodyText1: GoogleFonts.antic(
                    textStyle: textTheme.bodyText1,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: whiteHeadlineColor),
                bodyText2: GoogleFonts.roboto(
                  color: whiteHeadlineColor,
                  textStyle: textTheme.bodyText1,
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                )),
            primaryColor: greenDark1,
            accentColor: greenDark1),
        home: Login(),
      ),
    );
  }
}
