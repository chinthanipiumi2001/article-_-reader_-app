import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_title.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResearchArticlesScreen extends StatelessWidget {
  const ResearchArticlesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 461.v,
                width: 418.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 258.v,
                      width: 266.h,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(26.h, 93.v, 15.h, 347.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "9:45",
                              style: theme.textTheme.labelLarge,
                            ),
                            Spacer(),
                            CustomImageView(
                              svgPath: ImageConstant.imgSignal,
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                top: 2.v,
                                bottom: 1.v,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgWifi,
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 2.v,
                                bottom: 1.v,
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgBatterythreequarters,
                              height: 16.v,
                              width: 17.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 2.v,
                                bottom: 1.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage17,
                      height: 241.v,
                      width: 397.h,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomAppBar(
                      height: 194.v,
                      centerTitle: true,
                      title: AppbarTitle(
                        text: "Research Articles      ",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 471.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 274.v,
                      width: 283.h,
                      alignment: Alignment.bottomRight,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 132.h),
                        decoration: AppDecoration.fillTeal,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 16.v),
                            CustomImageView(
                              imagePath: ImageConstant.img1814118graphn,
                              height: 62.v,
                              width: 55.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage18,
                      height: 321.v,
                      width: 238.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 33.v),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img352555bookslibrarymyicon,
                      height: 69.v,
                      width: 74.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 121.h,
                        bottom: 13.v,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
