import 'package:flutter/material.dart';

import 'package:yummy_mobile/constants.dart';
import 'package:yummy_mobile/screens/form/sign_up/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Sign Up', style: kMainFormHeaderStyle),
                    const Text(
                      'Kindy create your account',
                      style: kSubTextStyle,
                    ),
                    const SizedBox(height: 10),
                    EmailLabel,
                    const SizedBox(height: 10),
                    PasswordLabel,
                    const SizedBox(height: 10),
                    RepeatPasswordLabel,
                    const SizedBox(height: 10),
                    PhoneLabel,
                    const SizedBox(height: 10),
                    Row(children: [
                      Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.white),
                          child: Checkbox(
                            value: false,
                            checkColor: Colors.blue,
                            activeColor: kSecondaryColor,
                            onChanged: (value) {
                              setState(() {
                                _agreed = value!;
                              });
                            },
                          )),
                      const SizedBox(width: 5),
                      GestureDetector(
                          onTap: () {
                            print('Tapped');
                          },
                          child: const Text(
                            'I have read the terms and conditions',
                            style: kFormLabelTextStyle,
                          )),
                    ]),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        print('submit button has been tapped');
                      },
                      child: Container(
                        width: 200,
                        height: 55,
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    )
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
