import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/extensions/spacing.dart';
import 'package:ecomm_app2/screens/app_screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPg extends StatefulWidget {
  const LoginPg({Key? key}) : super(key: key);

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  bool _obscureText = true;

  BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(imageAssets.p5),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, bottom: 10),
                  child: Text(fonts.welcome,
                      style: GoogleFonts.publicSans(
                          fontSize: 35, fontWeight: FontWeight.w900)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Text(fonts.pleaselogin,
                  style: GoogleFonts.lato(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.normal)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  labelText: fonts.email,
                  labelStyle:
                      const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const HSpace(Sizes.s35),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: _obscureText,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.visibility_off),
                  labelText: fonts.password,
                  labelStyle:
                      const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const HSpace(Sizes.s60),
            Material(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    Get.to(const HomeScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        fonts.login,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const HSpace(Sizes.s10),
            Row(
              children: [
                Text(
                  fonts.line,
                  style: const TextStyle(color: Colors.grey),
                ),
                const Text("or", style: TextStyle(fontSize: 20)),
                Text(
                  fonts.line,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const HSpace(Sizes.s10),
            Material(
              color: const Color(0xff4267b2),
              borderRadius: BorderRadius.circular(30),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 80, right: 09),
                        child: Ink.image(
                          image: AssetImage(
                            imageAssets.fbLogo,
                          ),
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          // child: Center(
                          //
                          // ),
                        ),
                      ),
                      const HSpace(Sizes.s60),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 60,
                        ),
                        child: Text(
                          textAlign: TextAlign.left,
                          fonts.continueWithFb,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const VSpace(Sizes.s10),
                    ],
                  )),
            ),
            const HSpace(Sizes.s10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 09),
                          child: Ink.image(
                            image: AssetImage(
                              imageAssets.googleLogo,
                            ),
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const HSpace(Sizes.s60),
                        const VSpace(Sizes.s5),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 60,
                          ),
                          child: Text(
                            textAlign: TextAlign.left,
                            fonts.continueWithGoogle,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const VSpace(Sizes.s10),
                      ],
                    )),
              ),
            ),
            const HSpace(Sizes.s10),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 90, right: 09),
                          child: Ink.image(
                            image: AssetImage(
                              imageAssets.appleLogo,
                            ),
                            height: 20,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const HSpace(Sizes.s60),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 60,
                          ),
                          child: Text(
                            textAlign: TextAlign.left,
                            fonts.continueWithApple,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
