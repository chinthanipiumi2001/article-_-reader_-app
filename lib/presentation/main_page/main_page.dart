import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainPage extends StatelessWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 410.v,
                  width: 418.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 147.v,
                        width: 149.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 25.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage3,
                        height: 147.v,
                        width: 154.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 14.h),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 249.h,
                          margin: EdgeInsets.only(
                            right: 169.h,
                            bottom: 125.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 98.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgShape,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img1954554hamburg,
                                height: 66.v,
                                width: 68.h,
                                margin: EdgeInsets.only(
                                  top: 9.v,
                                  bottom: 14.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage10,
                                height: 56.v,
                                width: 46.h,
                                margin: EdgeInsets.only(
                                  left: 23.h,
                                  bottom: 33.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomAppBar(
                        title: AppbarSubtitle(
                          text: "9:45",
                          margin: EdgeInsets.only(left: 27.h),
                        ),
                        actions: [
                          AppbarImage(
                            svgPath: ImageConstant.imgSignal,
                            margin: EdgeInsets.only(
                              left: 26.h,
                              top: 2.v,
                              right: 1.h,
                            ),
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgWifi,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              right: 1.h,
                            ),
                          ),
                          AppbarImage(
                            svgPath: ImageConstant.imgBatterythreequarters,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              right: 27.h,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 31.h,
                            bottom: 168.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
                            vertical: 10.v,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder22,
                          ),
                          child: Text(
                            "search here ",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img211818searchicon,
                        height: 59.v,
                        width: 57.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 78.h,
                          bottom: 162.v,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.only(top: 114.v),
                          child: Text(
                            "Hi Piumi Dissanayake",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 1.v,
                    right: 26.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Political Articles      ",
                            style: theme.textTheme.titleLarge,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage4,
                            height: 147.v,
                            width: 144.h,
                            margin: EdgeInsets.only(left: 13.h),
                          ),
                        ],
                      ),
                      Container(
                        height: 172.adaptSize,
                        width: 172.adaptSize,
                        margin: EdgeInsets.only(top: 2.v),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "Foreign Articles      ",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage5,
                              height: 149.v,
                              width: 148.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(left: 1.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 7.v,
                    right: 22.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "Sports Articles      ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "Education Articles      ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  height: 398.v,
                  width: 421.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 363.v,
                          width: 296.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShape,
                                height: 253.v,
                                width: 296.h,
                                alignment: Alignment.topCenter,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 126.v,
                                    right: 14.h,
                                  ),
                                  child: Text(
                                    "Research Articles      ",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img1904677addadd,
                        height: 77.v,
                        width: 73.h,
                        radius: BorderRadius.circular(
                          36.h,
                        ),
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 163.h,
                          bottom: 111.v,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 161.v),
                          child: Text(
                            "Academic Articles      ",
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage6,
                        height: 149.v,
                        width: 157.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 18.h,
                          top: 1.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage7,
                        height: 152.v,
                        width: 174.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 23.h),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
