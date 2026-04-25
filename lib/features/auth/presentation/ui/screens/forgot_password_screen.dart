import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';
import '../widgets/back_app_bar.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.chatMyMessageTextColor,
      appBar: const BackAppBar(title: "Back to Login"),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 100.w,
                decoration: BoxDecoration(
                  color: AppColors.chatSelectedCourseColor,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Icon(
                  Icons.email_rounded,
                  color: AppColors.primary,
                  size: 50.sp,
                ),
              ),
              SizedBox(height: 32.h),
              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.chatOtherMessageTextColor,
                ),
              ),
              SizedBox(height: 12.h),
              Text(
                "Enter your email and we'll send you reset instructions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.chatOtherMessageTextColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 40.h),
              const CustomTextField(
                label: "Email",
                hint: "Enter your email",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 32.h),
              PrimaryButton(
                text: "Send Reset Link",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}