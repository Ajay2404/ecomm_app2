import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomm_app2/common/app_array.dart';
import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/common/theme/app_css.dart';
import 'package:ecomm_app2/config.dart';
import 'package:ecomm_app2/extensions/spacing.dart';
import 'package:ecomm_app2/extensions/text_style_extensions.dart';
import 'package:ecomm_app2/screens/app_screens/collection_screen/collectionPage.dart';
import 'package:ecomm_app2/widgets/common_Bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomLayout extends StatelessWidget {
  const BottomLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(fonts.exploreMore,
                          style:
                              AppCss.tenorSansMedium16.textColor(Colors.black))
                      .paddingOnly(right: 10),
                  SvgPicture.asset(svgAssets.icon4),
                ],
              ),
            ).paddingOnly(left: 140, bottom: 30, top: 30),
          ],
        ),
        SvgPicture.asset(svgAssets.brand).paddingOnly(bottom: 30),
        Text(fonts.collections,
            style: AppCss.tenorSansblack24.textColor(appCtrl.appTheme.error)),
        const HSpace(Sizes.s30),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return CollectionPage();
              },
            ));
          },
          child: Image.asset(
            fit: BoxFit.cover,
            width: Sizes.s900,
            imageAssets.imag1,
          ),
        ),
        Image.asset(
          imageAssets.imag2,
        ).paddingOnly(top: 50),
        Image.asset(
          fit: BoxFit.fitWidth,
          width: Sizes.s900,
          height: Sizes.s300,
          imageAssets.video,
        ),
        Text(fonts.justForYou, style: AppCss.tenorSansMedium16),
        SvgPicture.asset(svgAssets.inn3),
        CarouselSlider(
          items: List.generate(
            AppArray().allTabList.length,
            (index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    AppArray().allTabList[index]['image'],
                    fit: BoxFit.fill,
                    height: Sizes.s350,
                    width: Sizes.s280,
                  ),
                ),
                Text(
                  AppArray().allTabList[index]['name'],
                  style: AppCss.tenorSans,
                ),
                Text(
                  AppArray().allTabList[index]['price'],
                ),
              ],
            ),
          ),
          options: CarouselOptions(
            height: Sizes.s480,
            viewportFraction: 0.7,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
        ),
        SvgPicture.asset(svgAssets.trending),
        Stack(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 30),
            alignment: Alignment.topCenter,
            height: Sizes.s500,
            color: const Color(0xfff2f2f2),
            child: SvgPicture.asset(
              height: Sizes.s40,
              svgAssets.logo,
            ),
          ).paddingOnly(top: 30),
          Center(
            child: Text(fonts.text1,
                    style: AppCss.tenorSans, textAlign: TextAlign.center)
                .paddingOnly(top: 130, right: 67, left: 74),
          ),
          SvgPicture.asset(
            svgAssets.inn3,
          ).paddingOnly(top: 190, left: 144),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    svgAssets.hap,
                  ).paddingOnly(top: 210, left: 40),
                  Text(
                    fonts.fastShipping,
                    style: AppCss.tenorSansMedium12,
                  ).paddingOnly(top: 11, left: 40),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    svgAssets.hap,
                  ).paddingOnly(top: 210, left: 90),
                  Text(fonts.sustainable, style: AppCss.tenorSansMedium12)
                      .paddingOnly(top: 11, left: 80),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    svgAssets.hap,
                  ).paddingOnly(top: 310, left: 30),
                  Text(
                    fonts.unique,
                    style: AppCss.tenorSansMedium12,
                  ).paddingOnly(top: 11, left: 30),
                ],
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    svgAssets.hap,
                  ).paddingOnly(top: 310, left: 60),
                  Text(fonts.fastShipping, style: AppCss.tenorSansMedium12)
                      .paddingOnly(top: 11, left: 60),
                ],
              ),
            ],
          ),
          Center(
            child: SvgPicture.asset(
              svgAssets.dsg,
            ).paddingOnly(
              top: 450,
            ),
          ),
        ]),
        Text(
          fonts.followUs,
          style: AppCss.tenorSans.size(Insets.i30),
        ).paddingOnly(top: 40),
        SvgPicture.asset(
          svgAssets.instagram,
          height: 40,
        ).paddingOnly(top: 10),
        const HSpace(Sizes.s20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              Image.asset(imageAssets.pg1),
              Text(
                fonts.mia,
                style: AppCss.tenorSansMedium20.textColor(Colors.white),
              ).paddingOnly(left: 9, bottom: 12)
            ]),
            Stack(alignment: Alignment.bottomLeft, children: [
              Image.asset(imageAssets.pg2),
              Text(
                fonts.jiHyn,
                style: AppCss.tenorSansMedium20.textColor(Colors.white),
              ).paddingOnly(left: 9, bottom: 12)
            ]),
          ],
        ),
        const HSpace(Sizes.s15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(alignment: Alignment.bottomLeft, children: [
              Image.asset(imageAssets.pg3),
              Text(
                fonts.mia,
                style: AppCss.tenorSansMedium20.textColor(Colors.white),
              ).paddingOnly(left: 9, bottom: 12)
            ]),
            Stack(alignment: Alignment.bottomLeft, children: [
              Image.asset(imageAssets.pg4),
              Text(
                fonts.jiHyn,
                style: AppCss.tenorSansMedium20.textColor(Colors.white),
              ).paddingOnly(left: 9, bottom: 12)
            ]),
          ],
        ),
        const HSpace(Sizes.s70),
        const CommonBottom(),
      ],
    );
  }
}
