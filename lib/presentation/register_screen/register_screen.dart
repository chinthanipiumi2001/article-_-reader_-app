import 'package:article_reader_app/core/app_export.dart';
import 'package:article_reader_app/widgets/app_bar/custom_app_bar.dart';
import 'package:article_reader_app/widgets/custom_elevated_button.dart';
import 'package:article_reader_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                  height: 274.v,
                  width: 404.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgShape,
                        height: 274.v,
                        width: 254.h,
                        alignment: Alignment.centerLeft,
                      ),
                      CustomAppBar(
                        title: Container(
                          height: 20.v,
                          width: 31.h,
                          margin: EdgeInsets.only(left: 27.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "9:45",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "9:45",
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          Container(
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              left: 26.h,
                              top: 2.v,
                              right: 1.h,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgSignal,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgSignal,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              right: 1.h,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgWifi,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgWifi,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 16.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              left: 6.h,
                              top: 2.v,
                              right: 27.h,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBatterythreequarters,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.bottomRight,
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgBatterythreequarters,
                                  height: 16.v,
                                  width: 17.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 273.h,
                          margin: EdgeInsets.only(bottom: 59.v),
                          child: Text(
                            "Registration ",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.headlineLarge!.copyWith(
                              height: 1.16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      controller: fullNameController,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        top: 10.v,
                        right: 63.h,
                      ),
                      hintText: "Enter your full name",
                    ),
                    CustomTextFormField(
                      controller: emailController,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        top: 48.v,
                        right: 63.h,
                      ),
                      hintText: "Enter your email",
                      textInputType: TextInputType.emailAddress,
                    ),
                    CustomTextFormField(
                      controller: passwordController,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        top: 48.v,
                        right: 63.h,
                      ),
                      hintText: "Enter password",
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    CustomTextFormField(
                      controller: confirmpasswordController,
                      margin: EdgeInsets.only(
                        left: 42.h,
                        top: 41.v,
                        right: 63.h,
                      ),
                      hintText: "Confirm Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 15.v,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 285.v,
                        width: 377.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgShape,
                              height: 266.v,
                              width: 272.h,
                              alignment: Alignment.bottomRight,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 26.h,
                                  top: 112.v,
                                ),
                                child: Text(
                                  "User Already have an account",
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              width: 325.h,
                              text: "Register",
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
      ),
    );
  }
}
