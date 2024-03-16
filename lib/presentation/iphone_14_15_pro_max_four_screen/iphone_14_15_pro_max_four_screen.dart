import 'package:flutter/material.dart';
import 'package:end_hunger/core/app_export.dart';

class Iphone1415ProMaxFourScreen extends StatelessWidget {
  const Iphone1415ProMaxFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 18.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle,
                height: 914.v,
                width: 424.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
