import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theme/app_color.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/primary_button.dart';
import '../widgets/social_button.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 40.h),
              Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                alignment: Alignment.center,
                child: Container(
                  width: 40.w,
                  height: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.chatMyMessageTextColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.chatOtherMessageTextColor,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Sign in to continue learning",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.chatOtherMessageTextColor.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 40.h),
              const CustomTextField(label: "Email", hint: "Enter your email"),
              SizedBox(height: 20.h),
              const CustomTextField(
                label: "Password",
                hint: "Enter your password",
                suffixIcon: Icons.visibility_off,
                isPassword: true,
              ),
              SizedBox(height: 12.h),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              PrimaryButton(text: "Sign In", onPressed: () {}),
              SizedBox(height: 24.h),
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: AppColors.secondary, thickness: 1.5),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      "--- or continue with ---",
                      style: TextStyle(
                        color: AppColors.chatOtherMessageTextColor.withOpacity(
                          0.5,
                        ),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: AppColors.secondary, thickness: 1.5),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              SocialButton(text: "Sign in with Google", onPressed: () {}),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.chatOtherMessageTextColor.withOpacity(
                        0.7,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
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
