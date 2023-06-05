// ignore_for_file: file_names

import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/controllers/app_pages_controllers/address_page_controller.dart';
import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/extensions/widget_extension.dart';
import 'package:ecomm_app2/widgets/app_bar_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ecomm_app2/routes/index.dart';
import 'package:ecomm_app2/widgets/drawer_common.dart';

import '../../../extensions/spacing.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({Key? key}) : super(key: key);

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  final addressCtrl = Get.put(AddressPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddressPageController>(builder: (_) {
      return Scaffold(
        key: addressCtrl.scaffoldKey,
        appBar: AppBarCommon(
            onPressed: () =>
                addressCtrl.scaffoldKey.currentState!.openDrawer()),
        drawer: const DrawerCommon(),
        body: SingleChildScrollView(
          child: Column(children: [
            const HSpace(Sizes.s50),
            Center(
                child: Text(
              fonts.shippingAdd,
              style: AppCss.tenorSansRegular20,
            )),
            const HSpace(Sizes.s10),
            SvgPicture.asset(svgAssets.inn3),
            const HSpace(Sizes.s50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: fonts.firstNm,
                      ),
                    )),
                const VSpace(Sizes.s20),
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                        decoration: InputDecoration(hintText: fonts.lastNm))),
              ],
            ),
            const HSpace(Sizes.s35),
            TextField(decoration: InputDecoration(hintText: fonts.address))
                .paddingOnly(right: 46, left: 48),
            const HSpace(Sizes.s35),
            TextField(decoration: InputDecoration(hintText: fonts.city))
                .paddingOnly(right: 46, left: 48),
            const HSpace(Sizes.s35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                      decoration: InputDecoration(hintText: fonts.state),
                    )),
                const VSpace(Sizes.s20),
                SizedBox(
                    height: Sizes.s30,
                    width: Sizes.s150,
                    child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: fonts.zipCode))),
              ],
            ),
            const HSpace(Sizes.s35),
            TextField(
              decoration: InputDecoration(hintText: fonts.phoneNum),
              keyboardType: TextInputType.number,
            ).paddingOnly(right: 46, left: 48),
          ]),
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          height: Sizes.s60,
          width: double.infinity,
          child: Row(
            children: [
              const VSpace(Sizes.s100),
              SvgPicture.asset(svgAssets.plus, color: Colors.white),
              const VSpace(Sizes.s50),
              Text(
                fonts.checkout,
                style: AppCss.tenorSansRegular14.textColor(Colors.white),
              )
            ],
          ),
        ).inkWell(
          onTap: () {
            Get.toNamed(routeName.paymentMethodPage);
          },
        ),
      );
    });
  }
}
