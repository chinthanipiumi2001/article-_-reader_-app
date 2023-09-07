import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/presentation/main_page/main_page.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class EducationArticlesScreen extends StatelessWidget {
  EducationArticlesScreen({Key? key})
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
                height: 539.v,
                width: 414.h,
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
                        padding: EdgeInsets.only(top: 147.v),
                        child: Text(
                          "Education Articles      ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage15,
                      height: 343.v,
                      width: 243.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 66.h),
                    ),
                  ],
                ),
              ),
              Container(
                height: 383.v,
                width: 415.h,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 10.v,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 270.v,
                      width: 253.h,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage16,
                      height: 295.v,
                      width: 376.h,
                      alignment: Alignment.topLeft,
                    ),
                  ],
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
