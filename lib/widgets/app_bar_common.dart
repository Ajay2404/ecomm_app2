import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/config.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AppBarCommon extends StatelessWidget with PreferredSizeWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final Color? svgcolor;

  const AppBarCommon({Key? key, this.onPressed, this.color, this.svgcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: SvgPicture.asset(
          svgAssets.logo,
          color: svgcolor ?? Colors.black,
        ),
      ).paddingOnly(left: 30),
      backgroundColor: color ?? appCtrl.appTheme.white,
      shadowColor: color ?? Colors.white,
      foregroundColor: color ?? Colors.white,
      surfaceTintColor: color ?? Colors.white,
      actions: [
        IconButton(
            onPressed: () {
              Get.toNamed(routeName.searchCommon);
            },
            icon: SvgPicture.asset(
              svgAssets.icon1,
              color: svgcolor ?? Colors.black,
            )),
        IconButton(
            onPressed: () => Get.toNamed(routeName.cartScreen),
            icon: SvgPicture.asset(
              svgAssets.icon2,
              color: svgcolor ?? Colors.black,
            )),
      ],
      leading: IconButton(
          // onPressed: () {
          //   scaffoldKey.currentState!.openDrawer();
          // },
          onPressed: onPressed,
          icon: SvgPicture.asset(
            svgAssets.icon3,
            color: svgcolor ?? Colors.black,
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
