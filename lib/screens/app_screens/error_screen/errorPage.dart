import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/controllers/app_pages_controllers/error_page_controller.dart';
import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:ecomm_app2/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:ecomm_app2/widgets/common_Bottom.dart';
import 'package:ecomm_app2/widgets/drawer_common.dart';
import 'package:ecomm_app2/extensions/spacing.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
final errorPageCtrl = Get.put(ErrorPageControllers());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: errorPageCtrl.scaffoldKey,
        appBar: AppBarCommon(onPressed: () => errorPageCtrl.scaffoldKey.currentState!.openDrawer()),
        drawer: const DrawerCommon(
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              const HSpace(Sizes.s50),
              Text(
                fonts.pageNotFound,
                style: AppCss.tenorSansRegular18,
              ),

              const HSpace(Sizes.s65),
              SvgPicture.asset(svgAssets.dummy),

              const HSpace(Sizes.s30),
              Center(
                child: Text(
                    textAlign: TextAlign.center, fonts.weCantFind,
                    style: AppCss.tenorSansRegular18),
              ),

              const HSpace(Sizes.s30),
              Container(
                height: 50,
                width: 180,
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(svgAssets.forward),
                    Text(fonts.homePg,
                        style: AppCss.tenorSansRegular20.textColor(Colors.white)),
                  ],
                ),
              ).inkWell(
                onTap: () {
                  Get.toNamed(routeName.home);
                },
              ),
              const HSpace(Sizes.s30),
              const CommonBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
