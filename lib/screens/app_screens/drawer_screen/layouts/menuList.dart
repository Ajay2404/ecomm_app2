import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../common/config.dart';
import '../../../../common/theme/app_css.dart';
import '../../../../config.dart';
import '../../../../extensions/spacing.dart';
import 'menuProductView.dart';

class MenuList extends StatelessWidget {
  var menudata;

  MenuList({Key? key, this.menudata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              menudata["image"],
              height: 150,
            ).paddingAll(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menudata["title"],
                  style: AppCss.tenorSansRegular18,
                ),
                VSpace(Sizes.s4),
                Text(
                  menudata["name"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.blackText),
                ),
                VSpace(Sizes.s4),
                Text(
                  menudata["price"],
                  style: AppCss.tenorSansRegular18
                      .textColor(appCtrl.appTheme.gray),
                ),
                VSpace(Sizes.s11),
                Row(
                  children: [
                    SvgPicture.asset(svgAssets.star, height: 15),
                    Text(fonts.ratings, style: AppCss.tenorSansRegular14),
                  ],
                ),
                VSpace(Sizes.s11),
                Row(
                  children: [
                    Text(
                    fonts.size,
                      style: AppCss.tenorSansRegular14,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      child: Text(fonts.s),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                    ),
                    HSpace(Sizes.s6),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      child: Text(fonts.m),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                    ),
                    HSpace(Sizes.s6),
                    Container(
                      alignment: Alignment.center,
                      height: 28,
                      width: 28,
                      child: Text(fonts.l),
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffdedede)),
                          borderRadius: BorderRadius.circular(33)),
                    ),
                    HSpace(Sizes.s85),
                    SvgPicture.asset(
                      svgAssets.heart,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).inkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return MenuProductView(menudata);
              },
            ));
          },
        ),
      ],
    );
  }
}
