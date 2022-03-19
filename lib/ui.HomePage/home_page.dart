import 'package:flutter/material.dart';
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
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Mie App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildSignInButton(buttonType: ButtonType.google),
                    buildSignInButton(buttonType: ButtonType.apple),
                    const Text(
                      'Email',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
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
