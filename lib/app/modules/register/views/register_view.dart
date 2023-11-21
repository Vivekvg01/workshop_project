import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:workshop_project/app/cutom_widgets/custom_button.dart';
import 'package:workshop_project/app/cutom_widgets/custom_password_feild.dart';
import 'package:workshop_project/app/cutom_widgets/custom_textfeild.dart';
import 'package:workshop_project/app/routes/app_pages.dart';
import 'package:workshop_project/utils/app_colors.dart';
import 'package:workshop_project/utils/sizes.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sizedHeight(12.h),
                CustomTextFeild(
                  hintText: 'Enter Workshop Name',
                ),
                sizedHeight(10.h),
                CustomTextFeild(
                  hintText: 'Enter Your Name',
                ),
                sizedHeight(10.h),
                CustomTextFeild(
                  hintText: 'Enter Mobile Number',
                ),
                sizedHeight(10.h),
                CustomPasswordField(
                  hintText: 'Enter Password',
                ),
                sizedHeight(10.h),
                CustomPasswordField(
                  hintText: 'Confirm Password',
                ),
                sizedHeight(10.h),
                SizedBox(
                  width: Get.width,
                  height: 23.h,
                  child: CustomButton(
                    text: 'Register',
                    onPressed: () {
                      Get.to(Routes.HOME);
                    },
                  ),
                ),
                sizedHeight(10.h),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Already have an account?  ',
                      style: TextStyle(fontSize: 14.sp),
                      children: [
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.back();
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
