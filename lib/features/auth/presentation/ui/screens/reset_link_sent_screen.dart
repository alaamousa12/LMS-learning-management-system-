import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';
import '../widgets/back_app_bar.dart';
import '../widgets/primary_button.dart';

class ResetLinkSentScreen extends StatelessWidget {
  const ResetLinkSentScreen({Key? key}) : super(key: key);

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
                  Icons.mark_email_read_rounded,
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
                "Check your email for password reset instructions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.chatOtherMessageTextColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 32.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: AppColors.chatSelectedCourseColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  children: [
                    Text(
                      "Password reset link sent to",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.chatOtherMessageTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      "user@example.com",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.h),
              PrimaryButton(
                text: "Back to Login",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}