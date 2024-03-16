import 'package:end_hunger/widgets/app_bar/custom_app_bar.dart';
import 'package:end_hunger/widgets/app_bar/appbar_leading_image.dart';
import 'package:end_hunger/widgets/app_bar/appbar_trailing_image.dart';
import 'package:end_hunger/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:end_hunger/core/app_export.dart';

class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  const Iphone1415ProMaxThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 67.v),
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 62.h, right: 18.h, bottom: 9.v),
                        decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 326.v,
                                  width: 238.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: 317.v,
                                                width: 232.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15.h),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          spreadRadius: 2.h,
                                                          blurRadius: 2.h,
                                                          offset: Offset(0, 4))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: 326.v,
                                            width: 238.h,
                                            radius: BorderRadius.circular(15.h),
                                            alignment: Alignment.center)
                                      ])),
                              SizedBox(height: 41.v),
                              CustomOutlinedButton(
                                  width: 205.h,
                                  text: "Make a Donation",
                                  margin: EdgeInsets.only(left: 18.h)),
                              SizedBox(height: 25.v),
                              CustomOutlinedButton(
                                  width: 205.h,
                                  text: "Your Donations",
                                  margin: EdgeInsets.only(left: 18.h)),
                              SizedBox(height: 25.v),
                              CustomOutlinedButton(
                                  width: 205.h,
                                  text: "Donation Requests",
                                  margin: EdgeInsets.only(left: 18.h)),
                              SizedBox(height: 35.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      margin: EdgeInsets.only(right: 67.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.gray30066,
                                          borderRadius:
                                              BorderRadius.circular(8.h)))),
                              SizedBox(height: 101.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 38.v,
                                  width: 39.h,
                                  alignment: Alignment.centerRight)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 429.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 31.h, top: 7.v, right: 362.h),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSettings,
              margin: EdgeInsets.fromLTRB(46.h, 2.v, 46.h, 7.v))
        ]);
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxTwoScreen);
  }
}
