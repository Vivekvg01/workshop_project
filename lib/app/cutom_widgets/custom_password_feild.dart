import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:workshop_project/utils/app_colors.dart';

class CustomPasswordField extends GetView {
  CustomPasswordField({
    super.key,
    this.hintText = '',
  });

  RxBool isPasswordVisible = false.obs;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return TextFormField(
        obscureText: isPasswordVisible.value ? false : true,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: IconButton(
            onPressed: () {
              isPasswordVisible.value = !isPasswordVisible.value;
            },
            icon: Icon(
              isPasswordVisible.value ? Icons.visibility : Icons.visibility_off,
              color: AppColors.kGreyColor,
            ),
            splashRadius: 1.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30.r),
          ),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide.none,
          ),
          fillColor: AppColors.klightGrey,
        ),
      );
    });
  }
}
