import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/theme/app_css.dart';
import '../screens/auth_screens/login_screen/login_screen.dart';
import '../screens/auth_screens/signup_screen/signup_screen.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({Key? key}) : super(key: key);

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: SafeArea(
            child: Stack(children: [
              Center(
                child: Image.asset(
                    alignment: Alignment.center,
                    "image/images/p6.jpg",
                    height: double.infinity,
                    fit: BoxFit.cover),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginPg();
                        },
                      ));
                    },
                    child: Center(
                      child: Container(
                        width: Sizes.s400,
                        height: Sizes.s60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Login',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).paddingOnly(left: 15, right: 15, top: 670),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpPg();
                        },
                      ));
                    },
                    child: Center(
                      child: Container(
                        width: Sizes.s400,
                        height: Sizes.s60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ).paddingOnly(left: 8, right: 8, top: 20),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
