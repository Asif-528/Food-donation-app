import 'package:end_hunger/widgets/app_bar/custom_app_bar.dart';
import 'package:end_hunger/widgets/app_bar/appbar_leading_image.dart';
import 'package:end_hunger/widgets/app_bar/appbar_trailing_image.dart';
import 'package:end_hunger/widgets/custom_text_form_field.dart';
import 'package:end_hunger/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:end_hunger/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveScreen extends StatelessWidget {
  Iphone1415ProMaxFiveScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 31.h, vertical: 44.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 44.h),
                                      child: Text("Sign In:",
                                          style:
                                              CustomTextStyles.titleMedium18)),
                                  SizedBox(height: 36.v),
                                  _buildUserName(context),
                                  SizedBox(height: 18.v),
                                  _buildPassword(context),
                                  SizedBox(height: 29.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 111.h),
                                      child: Text("Forgot password?",
                                          style: CustomTextStyles
                                              .bodySmallPortLligatSansTeal400)),
                                  SizedBox(height: 19.v),
                                  _buildLOGIN(context),
                                  SizedBox(height: 47.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 70.h),
                                      child: Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 25.v, bottom: 24.v),
                                            child: SizedBox(
                                                width: 124.h,
                                                child: Divider())),
                                        Container(
                                            width: 50.adaptSize,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.h,
                                                vertical: 14.v),
                                            decoration: AppDecoration.fillCyan
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder25),
                                            child: Text("OR",
                                                style: theme
                                                    .textTheme.labelLarge)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 25.v, bottom: 24.v),
                                            child: SizedBox(
                                                width: 124.h, child: Divider()))
                                      ])),
                                  SizedBox(height: 68.v),
                                  Container(
                                      height: 55.v,
                                      width: 265.h,
                                      margin: EdgeInsets.only(left: 14.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Text("LOGIN",
                                                    style: CustomTextStyles
                                                        .bodyMediumRegular)),
                                            _buildSignUp(context)
                                          ])),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 67.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 31.h, top: 11.v, bottom: 17.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.fromLTRB(59.h, 33.v, 59.h, 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: CustomTextFormField(
            width: 250.h,
            controller: userNameController,
            hintText: "Username"));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: CustomTextFormField(
            width: 250.h,
            controller: passwordController,
            hintText: "Password",
            hintStyle: CustomTextStyles.bodyMediumLight,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: true));
  }

  /// Section Widget
  Widget _buildLOGIN(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        width: 100.h,
        text: "LOGIN",
        margin: EdgeInsets.only(left: 99.h),
        buttonStyle: CustomButtonStyles.fillOnError,
        buttonTextStyle: CustomTextStyles.bodyMediumRegular);
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        width: 265.h, text: "Sign Up", alignment: Alignment.center);
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
