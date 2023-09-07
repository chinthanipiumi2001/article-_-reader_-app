import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_image.dart';
import 'package:article_reader_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_elevated_button.dart';
import 'package:article_reader_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 411.v,
                  width: 404.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 259.v,
                        width: 261.h,
                        alignment: Alignment.topLeft,
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
                      CustomImageView(
                        svgPath: ImageConstant.imgGroup5,
                        height: 187.v,
                        width: 221.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 78.h),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 32.v,
                        right: 23.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img1564534custome,
                            height: 51.v,
                            width: 50.h,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: emailController,
                              margin: EdgeInsets.only(left: 15.h),
                              hintText: "Enter your email",
                              textInputType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 26.v,
                        right: 27.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img1564520codeop,
                            height: 51.adaptSize,
                            width: 51.adaptSize,
                          ),
                          Expanded(
                            child: CustomTextFormField(
                              controller: passwordController,
                              margin: EdgeInsets.only(left: 11.h),
                              hintText: "Enter password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Forgot Password",
                        style: CustomTextStyles.bodyMediumCyan300,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 303.v,
                        width: 380.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgShape,
                              height: 267.v,
                              width: 281.h,
                              alignment: Alignment.bottomRight,
                            ),
                            CustomElevatedButton(
                              width: 325.h,
                              text: "Login",
                              alignment: Alignment.topLeft,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 66.h,
                                  top: 93.v,
                                ),
                                child: Text(
                                  "Register for new user ",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
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
      ),
    );
  }
}
