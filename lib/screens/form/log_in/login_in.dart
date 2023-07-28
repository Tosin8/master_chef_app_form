import 'package:flutter/material.dart';

import 'package:yummy_mobile/constants.dart';

import 'package:yummy_mobile/screens/form/sign_up/widgets.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _agreed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kBkgColor,
            )),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 40.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child:
                        Image.asset('assets/images/product_icon/logo_sub.png')),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign Up', style: kMainFormHeaderStyle),
                    Text(
                      'Kindy create your account',
                      style: kSubTextStyle,
                    ),
                    SizedBox(height: 10),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
