import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/presentation/main_page/main_page.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class PoliticalArticlesScreen extends StatelessWidget {
  PoliticalArticlesScreen({Key? key})
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 427.v,
                width: 387.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 297.v,
                      width: 250.h,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 156.v),
                        child: Text(
                          "Political Articles      ",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 205.v,
                      width: 246.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 27.h),
                    ),
                  ],
                ),
              ),
              Container(
                height: 495.v,
                width: 413.h,
                margin: EdgeInsets.only(
                  left: 17.h,
                  top: 10.v,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShape,
                      height: 276.v,
                      width: 278.h,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage9,
                      height: 285.v,
                      width: 355.h,
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
