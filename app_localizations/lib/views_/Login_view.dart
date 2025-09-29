import 'package:app_localizations/Routes/RoutesName.dart';
import 'package:app_localizations/l10n/app_localizations.dart';
import 'package:app_localizations/viewModel_/LocalizationPro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final location = AppLocalizations.of(context)!;
    final pro = Provider.of<Localizationpro>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blueGrey],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blue,
              title: Text(
                (location.loginTitle),
                style: GoogleFonts.agbalumo(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              expandedHeight: 100.h,
              floating: true,
              pinned: true,

              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DropdownButton<Locale>(
                    dropdownColor: Colors.teal,
                    borderRadius: BorderRadius.circular(20.r),
                    underline: const SizedBox(),
                    menuWidth: 120.w,
                    icon: const Icon(Icons.language, color: Colors.white),
                    value: pro.locale,
                    onChanged: (Locale? newLocale) {
                      if (newLocale != null) {
                        pro.setLocale(newLocale);
                      }
                    },
                    items:
                        L10n.supportedLocales.map((locale) {
                          final lang =
                              {
                                'en': 'English',
                                'es': 'Español',
                                'ur': 'اردو',
                                'ps': 'پښتو',
                              }[locale.languageCode];

                          return DropdownMenuItem(
                            value: locale,
                            child: Text(
                              lang ?? locale.languageCode,
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ),
              ],

              flexibleSpace: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blueGrey],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                        ),
                      ),

                      child: FlexibleSpaceBar(
                        background: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'login Now',
                              style: GoogleFonts.podkova(
                                color: Colors.white,
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 40.h)),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // 1st TextField for email
                    TextField(
                      style: TextStyle(color: Colors.black),

                      decoration: InputDecoration(
                        hintText: location.emailLab,
                        hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.email, color: Colors.black),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 3),
                        ),

                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 3),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                      ),
                    ),

                    SizedBox(height: 20.h),
                    // 2nd TextField for password
                    TextField(
                      style: TextStyle(color: Colors.black),
                      obscureText: pro.isPasswordObscured,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: location.passwordLab,
                        hintStyle: TextStyle(color: Colors.black),

                        suffixIcon: GestureDetector(
                          onTap: () {
                            pro.togglePasswordVisibility();
                          },
                          child: Icon(
                            pro.isPasswordObscured
                                ? Icons.visibility_off
                                : Icons.remove_red_eye_outlined,
                            color: Colors.black,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue, width: 2),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black, width: 3),
                        ),
                      ),
                    ),

                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 10.w),
                        Text(
                          location.forgotPassword,
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 219, 27, 13),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.h),

                    // Elevated button for Sign up
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {},
                      child: Text(
                        location.loginButton,
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                    ),

                    SizedBox(height: 30.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: location.noAccount,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: location.signUpNow,
                                style: GoogleFonts.poppins(color: Colors.white),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                          context,
                                          Routesname.signup,
                                        );
                                      },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
