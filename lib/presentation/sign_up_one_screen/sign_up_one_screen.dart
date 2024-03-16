import 'package:end_hunger/widgets/app_bar/custom_app_bar.dart';
import 'package:end_hunger/widgets/app_bar/appbar_trailing_image.dart';
import 'package:end_hunger/widgets/custom_text_form_field.dart';
import 'package:end_hunger/widgets/custom_radio_button.dart';
import 'package:end_hunger/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:end_hunger/core/app_export.dart';

class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  String radioGroup = "";

  TextEditingController emailController = TextEditingController();

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
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: 428.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 45.h,
                  vertical: 25.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Register:",
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 31.v),
                    _buildName(context),
                    SizedBox(height: 23.v),
                    _buildPhoneNumber(context),
                    SizedBox(height: 37.v),
                    Padding(
                      padding: EdgeInsets.only(left: 46.h),
                      child: Row(
                        children: [
                          Container(
                            height: 15.adaptSize,
                            width: 15.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 1.v),
                            decoration: BoxDecoration(
                              color: appTheme.gray400,
                              borderRadius: BorderRadius.circular(
                                7.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "NGO",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    _buildRestaurant(context),
                    SizedBox(height: 48.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    _buildPassword(context),
                    SizedBox(height: 38.v),
                    Container(
                      height: 55.v,
                      width: 265.h,
                      margin: EdgeInsets.only(left: 4.h),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 106.h),
                              child: Text(
                                "LOGIN",
                                style: CustomTextStyles.bodyMediumRegular,
                              ),
                            ),
                          ),
                          _buildSubmit(context),
                        ],
                      ),
                    ),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        "Sign in instead",
                        style: CustomTextStyles.labelLargeLightblueA700,
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSettings,
          margin: EdgeInsets.symmetric(
            horizontal: 52.h,
            vertical: 22.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 78.h,
      ),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 77.h,
      ),
      child: CustomTextFormField(
        controller: phoneNumberController,
        hintText: "Phone Number",
        textInputType: TextInputType.phone,
      ),
    );
  }

  /// Section Widget
  Widget _buildRestaurant(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 46.h),
      child: CustomRadioButton(
        text: "Restaurant",
        value: "Restaurant",
        groupValue: radioGroup,
        onChange: (value) {
          radioGroup = value;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 78.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email Id",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 78.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
      width: 265.h,
      text: "Submit",
      alignment: Alignment.center,
    );
  }
}
