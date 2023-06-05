import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/controllers/app_pages_controllers/contactUs_page_controller.dart';
import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:ecomm_app2/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../extensions/spacing.dart';
import '../../../widgets/common_Bottom.dart';
import '../../../widgets/drawer_common.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
final contactUsCtrl = Get.put(ContactUsPageControllers());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: contactUsCtrl.scaffoldKey,
        appBar: AppBarCommon(onPressed: () => contactUsCtrl.scaffoldKey.currentState!.openDrawer()),
        drawer: const DrawerCommon(),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Text(
                fonts.contactus,
                style: AppCss.tenorSansRegular22,
              ).paddingOnly(top: 30, bottom: 05),
            ),
            SvgPicture.asset(svgAssets.inn3, width: 120),
            const HSpace(Sizes.s60),
            SvgPicture.asset(
              svgAssets.msg,
              height: Sizes.s43,
              width: Sizes.s45,
            ),

            const HSpace(Sizes.s20),
            Center(
              child: Text(
                fonts.neeDans,
                style: AppCss.tenorSansRegular18,
              ).paddingAll(15),
            ),

            const HSpace(Sizes.s20),
            Container(
              alignment: Alignment.center,
              height: Sizes.s50,
              width: Sizes.s180,
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.black),
              child: Text(fonts.chatWithUs,
                  style: AppCss.tenorSansRegular18.textColor(Colors.white)),
            ).inkWell(
              onTap: () {
                Get.toNamed(routeName.errorPage);
              },
            ),

            const HSpace(Sizes.s60),
            SvgPicture.asset(
              svgAssets.mail,
              height: Sizes.s43,
              width: Sizes.s45,
            ),

            const HSpace(Sizes.s20),
            Center(
              child: Text(
                fonts.youCanText,
                style: AppCss.tenorSansRegular18,
              ).paddingAll(15),
            ),

            const HSpace(Sizes.s20),
            Container(
              alignment: Alignment.center,
              height: Sizes.s50,
              width: Sizes.s180,
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.black),
              child: Text(fonts.textUs,
                  style: AppCss.tenorSansRegular18.textColor(Colors.white)),
            ).inkWell(
              onTap: () {
                Get.toNamed(routeName.errorPage);
              },
            ),

            const HSpace(Sizes.s60),
            SvgPicture.asset(
              svgAssets.twit,
              height: Sizes.s43,
              width: Sizes.s45,
            ),

            const HSpace(Sizes.s20),
            Center(
              child: Text(
                fonts.sendDirectMsg,
                style: AppCss.tenorSansRegular18,
              ).paddingAll(15),
            ),
            const CommonBottom(),
          ]),
        ),
      ),
    );
  }
}
