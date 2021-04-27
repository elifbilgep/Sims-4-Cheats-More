import 'package:flutter/material.dart';

Color whiteHeadlineColor = Color(0xffF1F1F1);
Color lightGreen = Color(0xffDBEBB3);
Color greenDark1 = Color(0xff3D8A48);
Color greenDark2 = Color(0xff2BA453);
Color greenDark3 = Color(0xff73B74A);

Color greenLight1 = Color(0xffABD542);
Color greenLight2 = Color(0xffC4DC4D);
Color greenLight3 = Color(0xff41AD50);
Color greenLight4 = Color(0xffD1E35F);

Color heartColor = Color(0xffDFA9A9);

LinearGradient greenGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  stops: [
    0.1,
    0.3,
    0.6,
    0.9,
  ],
  colors: [lightGreen, greenLight1, greenLight3, greenDark1],
);
