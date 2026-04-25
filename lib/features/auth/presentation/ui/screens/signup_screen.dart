import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/role_selector.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.chatMyMessageTextColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60.w,
                height: 60.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                alignment: Alignment.center,
                child: Container(
                  width: 30.w,
                  height: 30.w,
                  decoration: BoxDecoration(
                    color: AppColors.chatMyMessageTextColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.chatOtherMessageTextColor,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Join us and start learning today",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.chatOtherMessageTextColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 32.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "I am a",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.chatOtherMessageTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              const RoleSelector(),
              SizedBox(height: 24.h),
              const CustomTextField(
                label: "Full Name",
                hint: "John Doe",
                prefixIcon: Icons.person_outline,
              ),
              SizedBox(height: 16.h),
              const CustomTextField(
                label: "Email",
                hint: "example@email.com",
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 16.h),
              const CustomTextField(
                label: "Password",
                hint: "Enter your password",
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.visibility_off,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              const CustomTextField(
                label: "Confirm Password",
                hint: "Re-enter your password",
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.visibility_off,
                isPassword: true,
              ),
              SizedBox(height: 32.h),
              PrimaryButton(
                text: "Create Account",
                onPressed: () {},
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.chatOtherMessageTextColor.withOpacity(0.7),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}