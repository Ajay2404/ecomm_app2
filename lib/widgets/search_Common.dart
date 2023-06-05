import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../common/config.dart';
import '../common/theme/app_css.dart';
import '../extensions/spacing.dart';

class SearchCommon extends StatelessWidget {
  SearchCommon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VSpace(Sizes.s60),
          Container(
                  width: 340,
                  child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: SvgPicture.asset(
                            svgAssets.close,
                          ).paddingAll(10),
                          hintText: "Search items",
                          hintStyle: AppCss.tenorSansRegular16,
                          prefixIcon: SvgPicture.asset(
                            svgAssets.icon1,
                          ).paddingAll(10))))
              .marginOnly(left: 20),
          VSpace(Sizes.s30),
          Text(
            "Recently search",
            style: AppCss.tenorSansRegular16.textColor(Colors.grey),
          ).paddingOnly(left: 20),
          VSpace(Sizes.s10),
          Row(
            children: [
              HSpace(Sizes.s20),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 78,
                decoration: BoxDecoration(
                    color: Color(0x1ac4c4c4),
                    border: Border.all(color: Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dress",
                        style: AppCss.tenorSansRegular14
                            .textColor(Color(0xff555555))),
                    SvgPicture.asset(
                      height: 18,
                      color: Color(0xff14142b),
                      svgAssets.close,
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
              HSpace(Sizes.s10),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 108,
                decoration: BoxDecoration(
                    color: Color(0x1ac4c4c4),
                    border: Border.all(color: Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Collection",
                        style: AppCss.tenorSansRegular14
                            .textColor(Color(0xff555555))),
                    SvgPicture.asset(
                      height: Sizes.s18,
                      svgAssets.close,
                      color: Color(0xff14142b),
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
              HSpace(Sizes.s10),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 73,
                decoration: BoxDecoration(
                    color: Color(0x1ac4c4c4),
                    border: Border.all(color: Color(0x1ac4c4c4)),
                    borderRadius: BorderRadius.circular(33)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Nike",
                        style: AppCss.tenorSansRegular14
                            .textColor(Color(0xff555555))),
                    SvgPicture.asset(
                      height: 18,
                      svgAssets.close,
                      color: Color(0xff14142b),
                    )
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.searchView);
                },
              ),
            ],
          ),
          VSpace(Sizes.s20),
          Text("People search terms",
                  style: AppCss.tenorSansRegular14.textColor(Colors.grey))
              .paddingOnly(left: 20),
          Text(
            "Trend",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginOnly(top: 16, bottom: 8),
          Text(
            "Dress",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginSymmetric(vertical: 8),
          Text(
            "Bag",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginSymmetric(vertical: 8),
          Text(
            "Tshirt",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginSymmetric(vertical: 8),
          Text(
            "Beauty",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginSymmetric(vertical: 8),
          Text(
            "Accessories",
            style: AppCss.tenorSansRegular16,
          ).paddingOnly(left: 20).marginSymmetric(vertical: 8),
        ],
      ),
    );
  }
}
