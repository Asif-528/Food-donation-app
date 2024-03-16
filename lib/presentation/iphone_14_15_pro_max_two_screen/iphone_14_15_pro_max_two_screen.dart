import 'package:flutter/material.dart';
import 'package:end_hunger/core/app_export.dart';

class Iphone1415ProMaxTwoScreen extends StatelessWidget {
  const Iphone1415ProMaxTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 60.h,
            vertical: 17.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgOrderDetails,
            height: 896.v,
            width: 294.h,
          ),
        ),
      ),
    );
  }
}
