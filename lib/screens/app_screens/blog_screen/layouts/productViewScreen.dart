import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/controllers/app_pages_controllers/blog_page_controller.dart';
import 'package:ecomm_app2/widgets/app_bar_common.dart';
import 'package:ecomm_app2/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../widgets/drawer_common.dart';
import '../../../../common/config.dart';

class ProductViewScreen extends StatelessWidget {
  final blogPageCtrl = Get.put(BlogPageControllers());

  var data;

  ProductViewScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPageControllers>(builder: (_) {
      return Scaffold(
        key: blogPageCtrl.productScaffoldKey,
        appBar: AppBarCommon(
            onPressed: () =>
                blogPageCtrl.productScaffoldKey.currentState!.openDrawer()),
        drawer: DrawerCommon(),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                height: Sizes.s230,
                width: double.infinity,
                child: Image.asset(
                  data["image"],
                  fit: BoxFit.fill,
                )),
            Text(
              data["title"],
            ),
            Text(
              style: AppCss.tenorSansRegular16,
              textAlign: TextAlign.left,
              fonts.youGuy,
            ).paddingAll(20),
            CommonBottom(),
          ]),
        ),
      );
    });
  }
}
