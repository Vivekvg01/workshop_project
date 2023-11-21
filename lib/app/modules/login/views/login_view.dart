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

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 30.0.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                sizedHeight(10.h),
                Text(
                  'Mobile No',
                  style: TextStyle(fontSize: 14.sp),
                ),
                sizedHeight(3.h),
                SizedBox(
                  height: 25.h,
                  child: CustomTextFeild(),
                ),
                sizedHeight(10.h),
                Text(
                  'Password',
                  style: TextStyle(fontSize: 14.sp),
                ),
                sizedHeight(3.h),
                SizedBox(
                  height: 25.h,
                  child: CustomPasswordField(),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password'),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 23.h,
                  child: CustomButton(
                    text: 'Login',
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                  ),
                ),
                sizedHeight(10.h),
                Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Don\'t have an account yet? ',
                      style: TextStyle(fontSize: 14.sp),
                      children: [
                        TextSpan(
                          text: 'Register',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14.sp,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.REGISTER);
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
