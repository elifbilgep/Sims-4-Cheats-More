import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/components/button.dart';
import 'package:sims4_cheats/view/components/headline.dart';
import 'package:sims4_cheats/view/components/image.dart';
import 'package:sims4_cheats/view/components/nameFormField.dart';



import '../colors.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(gradient: greenGradient),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Headline(size: size),
            NameFormField(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 5.0, right: (size.width - 260) / 2),
                child: Button(
                  text: "Let's Go",
                  color: greenDark1,
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, right: 30),
                  child: Plumbob(),
                ))
          ],
        ),
      ),
    );
  }
}
