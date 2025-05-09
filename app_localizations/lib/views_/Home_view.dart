import 'package:app_localizations/Routes/RoutesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ('login & SignUp'),
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
                              'Welcome to the App',
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

            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80.h),
                  Text(
                    'This is a simple Example for app localization',
                    style: GoogleFonts.podkova(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 50.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routesname.login);
                    },
                    child: Container(
                      height: 100.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blueGrey, Colors.brown],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                        ),

                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),

                      child: Center(
                        child: Text(
                          'Login In Now',
                          style: GoogleFonts.abrilFatface(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routesname.signup);
                    },
                    child: Container(
                      height: 100.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blueGrey, Colors.brown],
                          begin: Alignment.topRight,
                          end: Alignment.bottomRight,
                        ),

                        borderRadius: BorderRadius.circular(20.r),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),

                      child: Center(
                        child: Text(
                          'Sign Up Now',
                          style: GoogleFonts.abrilFatface(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
