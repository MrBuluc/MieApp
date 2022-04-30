import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height * 0.5,
          ),
          Container(
            width: size.width,
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Mie App',
                    style: GoogleFonts.lobster(fontSize: 40),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSignInButton(buttonType: ButtonType.google),
                    buildSignInButton(buttonType: ButtonType.apple),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  SignInButton buildSignInButton({required ButtonType buttonType}) {
    String btnText;
    switch (buttonType) {
      case ButtonType.apple:
        btnText = "Apple";
        break;
      case ButtonType.google:
        btnText = "Google";
        break;
      default:
        btnText = "";
    }
    return SignInButton(
        buttonType: buttonType,
        btnText: "Continue with $btnText",
        buttonSize: ButtonSize.medium,
        onPressed: () {});
  }
}
