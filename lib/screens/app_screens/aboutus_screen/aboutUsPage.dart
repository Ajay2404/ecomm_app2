import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ecomm_app2/widgets/drawer_common.dart';
import 'package:ecomm_app2/controllers/app_pages_controllers/about_us_controller.dart';

import 'package:ecomm_app2/extensions/spacing.dart';

// ignore: use_key_in_widget_constructors
class AboutUsPage extends StatelessWidget {
  final aboutUsCtrl = Get.put(AboutUsControllers());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutUsControllers>(builder: (_) {
      return Scaffold(
          key: aboutUsCtrl.scaffoldKey,
          appBar: AppBarCommon(
              onPressed: () =>
                  aboutUsCtrl.scaffoldKey.currentState!.openDrawer()),
          drawer: const DrawerCommon(),
          body: Column(
            children: [
              const HSpace(Sizes.s33),
              Center(
                  child:
                      Text(fonts.ourStory, style: AppCss.tenorSansRegular18)),
              SvgPicture.asset(svgAssets.inn3),
              const HSpace(Sizes.s17),
              Text(
                fonts.openFashion,
                style: AppCss.tenorSansRegular18,
              ),
              const HSpace(Sizes.s30),
              SizedBox(
                width: double.infinity,
                child: Image(
                  image: AssetImage(imageAssets.imag3),
                  fit: BoxFit.fill,
                ),
              ),
              const HSpace(Sizes.s40),
              Text(fonts.signUp, style: AppCss.tenorSansRegular18),
              SvgPicture.asset(svgAssets.inn3),
              const HSpace(Sizes.s10),
              Text(fonts.newArrival,
                  style: AppCss.tenorSansRegular14.textColor(Colors.grey)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: aboutUsCtrl.controller,
                  decoration: InputDecoration(
                      hintText: fonts.email,
                      hintStyle:
                          AppCss.tenorSansRegular14.textColor(Colors.grey)),
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.black,
            height: Sizes.s60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fonts.submit,
                  style: AppCss.tenorSansRegular14.textColor(Colors.white),
                ),
                const VSpace(Sizes.s20),
                SvgPicture.asset(svgAssets.forwardArrow, color: Colors.white),
              ],
            ),
          ));
    });
  }
}
