import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 270.v,
                width: 411.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Welcome Vertex Readrs  ",
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 232.v,
                      width: 266.h,
                      alignment: Alignment.topLeft,
                    ),
                    CustomAppBar(
                      title: AppbarSubtitle(
                        text: "9:45",
                        margin: EdgeInsets.only(left: 33.h),
                      ),
                      actions: [
                        AppbarImage(
                          svgPath: ImageConstant.imgSignal,
                          margin: EdgeInsets.only(
                            left: 20.h,
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
                            right: 21.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 18.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1,
                    height: 253.v,
                    width: 259.h,
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(1.h),
                      topRight: Radius.circular(47.h),
                      bottomLeft: Radius.circular(47.h),
                    ),
                  ),
                  SizedBox(height: 57.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 333.v,
                      width: 368.h,
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgShape,
                            height: 302.v,
                            width: 229.h,
                            alignment: Alignment.bottomRight,
                          ),
                          CustomElevatedButton(
                            width: 325.h,
                            text: "Get Started",
                            buttonStyle: CustomButtonStyles.fillCyan,
                            alignment: Alignment.topLeft,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
