import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/presentation/main_page/main_page.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class AcademicArticlesScreen extends StatelessWidget {
  AcademicArticlesScreen({Key? key})
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
          height: 751.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 263.v,
                width: 279.h,
                alignment: Alignment.topLeft,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 257.v,
                width: 283.h,
                alignment: Alignment.bottomRight,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 50.v),
                  child: Text(
                    "Academic Articles      ",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage19,
                height: 309.v,
                width: 259.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 111.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage20,
                height: 312.v,
                width: 240.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 57.h,
                  bottom: 23.v,
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
