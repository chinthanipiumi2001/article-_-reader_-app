import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/presentation/main_page/main_page.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class SportsArticlesScreen extends StatelessWidget {
  SportsArticlesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: AppbarSubtitle(
            text: "9:45",
            margin: EdgeInsets.only(left: 26.h),
          ),
          actions: [
            AppbarImage(
              svgPath: ImageConstant.imgSignal,
              margin: EdgeInsets.only(
                left: 27.h,
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
                right: 28.h,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 501.v,
                width: 374.h,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 271.v,
                      width: 256.h,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 160.v),
                        child: Text(
                          "Sports Articles      ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage13,
                      height: 291.v,
                      width: 314.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 419.v,
                  width: 334.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 255.v,
                        width: 294.h,
                        alignment: Alignment.bottomRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage14,
                        height: 327.v,
                        width: 251.h,
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomAppBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.homeicon:
        return AppRoutes.mainPage;
      case BottomBarEnum.favorit:
        return "/";
      case BottomBarEnum.graphn:
        return "/";
      case BottomBarEnum.bookslibrarymyicon:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.mainPage:
        return MainPage();
      default:
        return DefaultWidget();
    }
  }
}
