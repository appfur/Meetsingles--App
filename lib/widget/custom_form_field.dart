import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/theme/app_color.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    this.controller,
    this.validator,
    this.obsecure,
    this.keyboardType,
    this.onTap,
    this.suffixIcon,
    this.isSuffixIcon = false,
    this.enabled,
    this.onChanged,
    this.hintText,
  });

  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool? obsecure;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  final Widget? suffixIcon;
  final bool isSuffixIcon;
  final bool? enabled;
  final Function(String)? onChanged;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextFormField(
        style: TextStyle(
            color: AppColor.blackColor,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp),
        onChanged: onChanged,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obsecure ?? false,
        cursorColor: AppColor.primaryColor,
        controller: controller,
        keyboardType: keyboardType,
        enabled: enabled,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          suffixIcon: isSuffixIcon ? suffixIcon : const SizedBox(),
          prefix: SizedBox(
            width: 10.w,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor.shade100),
            borderRadius: BorderRadius.circular(12.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor.shade100),
            borderRadius: BorderRadius.circular(12.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.primaryColor),
            borderRadius: BorderRadius.circular(12.r),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: AppColor.greyColor,
              fontWeight: FontWeight.w300,
              fontSize: 14.sp),
        ),
        validator: validator,
      ),
    );
  }
}
