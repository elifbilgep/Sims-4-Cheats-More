import 'package:flutter/material.dart';
import 'package:sims4_cheats/view/Pages/home.dart';
import 'package:sims4_cheats/view/components/headline.dart';
import 'package:sims4_cheats/view/components/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sims4_cheats/view/colors.dart';
import '../colors.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  String name;
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
            Container(
              height: size.height * 0.2,
              width: 220,
              child: Center(
                child: Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please give me a name ";
                        }
                      },
                      onSaved: (newValue) => name = newValue,
                      maxLength: 20,
                      cursorColor: whiteHeadlineColor,
                      style: GoogleFonts.roboto(
                          color: whiteHeadlineColor, fontSize: 19),
                      decoration: InputDecoration(
                          counterStyle: TextStyle(
                              fontSize: 16, color: whiteHeadlineColor),
                          hintText: "Name",
                          hintStyle: GoogleFonts.roboto(
                              color: whiteHeadlineColor, fontSize: 19),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: whiteHeadlineColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: whiteHeadlineColor),
                          )),
                    )),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding:
                    EdgeInsets.only(top: 5.0, right: (size.width - 260) / 2),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: greenDark1, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Text("Let's Go"),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      return Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomePage(
                          name: name,
                        );
                      }));
                    }
                  },
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
