import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../common/config.dart';
import '../common/theme/app_css.dart';
import '../extensions/spacing.dart';
import '../screens/app_screens/blog_screen/blogPage.dart';
import '../screens/app_screens/contactus_screen/contactUs.dart';
import 'divider_common.dart';

class CommonBottom extends StatelessWidget {
  const CommonBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const HSpace(Sizes.s20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgAssets.twitter)
                  .paddingOnly(right: 15, left: 15, top: 70),
              SvgPicture.asset(svgAssets.instagram)
                  .paddingOnly(right: 15, left: 15, top: 70),
              SvgPicture.asset(svgAssets.youtube)
                  .paddingOnly(right: 15, left: 15, top: 70),
            ],
          ),
          const DividerCommon(),
          Center(
            child: Row(
              children: [
                Text(
                  "support@openui.design",
                  style: AppCss.tenorSansMedium20,
                ),
                Text(
                  "+ 60 825 876",
                  style: AppCss.tenorSansMedium20,
                ),
                Text(
                  "08:00 - 22:00 - Everyday",
                  style: AppCss.tenorSansMedium20,
                ),
              ],
            ),
          ),
          const HSpace(Sizes.s30),
          SvgPicture.asset(
            svgAssets.inn3,
            height: 13,
          ),
          const HSpace(Sizes.s30),
          Row(
            children: [
              const VSpace(Sizes.s60),
              Text(
                "About",
                style: AppCss.tenorSansMedium20,
              ).inkWell(onTap: () => Get.toNamed(routeName.aboutUs)),
              const VSpace(Sizes.s50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const ContactUs();
                    },
                  ));
                },
                child: Text(
                  "Contact",
                  style: AppCss.tenorSansMedium20,
                ),
              ),
              const VSpace(Sizes.s50),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return BlogPage();
                    },
                  ));
                },
                child: Text(
                  "Blog",
                  style: AppCss.tenorSansMedium20,
                ),
              ),
            ],
          ),
          const HSpace(Sizes.s30),
          Container(
            alignment: Alignment.center,
            height: 70,
            color: const Color(0xfff2f2f2),
            child: Text(
              "Copyright© OpenUI All Rights Reserved.",
              style: AppCss.tenorSansMedium14,
            ),
          ),
        ],
      ),
    );
  }
}
