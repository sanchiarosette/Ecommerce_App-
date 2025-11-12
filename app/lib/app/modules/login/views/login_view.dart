import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Login image from assets - full width, no margins
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/signUp_dark.png',
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: double.infinity,
                    height: 250.h,
                    color: Colors.grey.shade200,
                    child: const Icon(
                      Icons.image,
                      size: 80,
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 32.h),

            // Header section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Text(
                    'Welcome back!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Log in with your data that you entered during your registration.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 32.h),

                  // Form fields section - actual input fields
                  // Email field
                  TextField(
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: Color(0xFF8B5FBF)), // Light purple
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16.h),

                  // Password field
                  TextField(
                    controller: controller.passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: Color(0xFF8B5FBF)), // Light purple
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 12.h),

                  // Forgot password link
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Handle forgot password
                      },
                      child: Text(
                        'Forgot password',
                        style: GoogleFonts.inter(
                          color: const Color(0xFF8B5FBF), // Light purple
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),

                  // Login button
                  Obx(() => SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child: ElevatedButton(
                          onPressed: controller.isLoading.value
                              ? null
                              : controller.login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8B5FBF), // Light purple
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          child: controller.isLoading.value
                              ? const CircularProgressIndicator(
                                  color: Colors.white)
                              : Text(
                                  'Log in',
                                  style: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      )),
                  SizedBox(height: 16.h),

                  // Footer text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: GoogleFonts.inter(
                          color: Colors.grey[600],
                          fontSize: 14.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle sign up navigation
                        },
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF8B5FBF), // Light purple
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
