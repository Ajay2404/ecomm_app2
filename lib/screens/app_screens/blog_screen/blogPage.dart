import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/screens/app_screens/blog_screen/layouts/productDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controllers/app_pages_controllers/blog_page_controller.dart';
import '../../../extensions/spacing.dart';
import '../../../widgets/app_bar_common.dart';
import '../../../widgets/common_Bottom.dart';
import '../../../widgets/drawer_common.dart';
import 'layouts/gridproduct.dart';

class BlogPage extends StatefulWidget {

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage>
    with SingleTickerProviderStateMixin {
  final blogPageCtrl = Get.put(BlogPageControllers());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<BlogPageControllers>(
      builder: (_) {
        return Scaffold(
          key: blogPageCtrl.scaffoldKey,
          drawer: DrawerCommon(),
          appBar: AppBarCommon(
            onPressed: () => blogPageCtrl.scaffoldKey.currentState!.openDrawer(),
          ),
          body: SizedBox(
            height:double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        fonts.blog,
                        style: AppCss.tenorSansMedium20,
                      ).paddingOnly(top: 30, left: Insets.i170),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (blogPageCtrl.status == 0) {
                              blogPageCtrl.status = 1;
                            } else {
                              blogPageCtrl.status = 0;
                            }
                          });
                        },
                        icon: blogPageCtrl.status == 0
                            ? Icon(
                                Icons.list,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.grid_view,
                                color: Colors.grey,
                              ),
                      ).paddingOnly(top: 30, left: Insets.i120),
                    ],
                  ),
                  SvgPicture.asset(svgAssets.inn3).paddingOnly(bottom: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: Sizes.s30,
                          width: Sizes.s70,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            fonts.fashion,
                            style: AppCss.tenorSansRegular14,
                          )),
                      Container(
                          height: Sizes.s30,
                          width: Sizes.s70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            fonts.promo1,
                            style: AppCss.tenorSansRegular14,
                          )),
                      Container(
                          height: Sizes.s30,
                          width: Sizes.s70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            fonts.policy,
                            style: AppCss.tenorSansRegular14,
                          )),
                      Container(
                          height: Sizes.s30,
                          width: Sizes.s90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            fonts.lookBook,
                            style: AppCss.tenorSansRegular14,
                          )),
                      Container(
                          height: Sizes.s30,
                          width: Sizes.s70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            fonts.sale,
                            style: AppCss.tenorSansRegular14,
                          )),
                    ],
                  ).paddingOnly(bottom: 20),
                  blogPageCtrl.status == 0
                      ? SizedBox(
                          height: MediaQuery.of(context).size.height * 1.2,
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: appArray.listArray.length,
                            itemBuilder: (context, index) {
                              return ProductDetail(
                                data: appArray.listArray[index],
                              );
                            },
                          ))
                      : SizedBox(
                          height: MediaQuery.of(context).size.height * 1.74,
                          child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: appArray.listArray.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 10 / 10,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      crossAxisCount: 1,
                                      mainAxisExtent: 250),
                              itemBuilder: (context, index) {
                                return GridProductDetail(
                                  data: blogPageCtrl.productLists[index],
                                );
                              }),
                        ),
                  Container(
                      width: Sizes.s250,
                      height: Sizes.s70,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fonts.loadMore,
                            style: AppCss.tenorSansRegular18,
                          ),
                      const VSpace(Sizes.s20),
                          SvgPicture.asset(svgAssets.plus)
                        ],
                      )),
                  CommonBottom(),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
