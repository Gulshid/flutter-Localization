import 'package:app_localizations/Routes/Routes.dart';
import 'package:app_localizations/Routes/RoutesName.dart';
import 'package:app_localizations/viewModel_/LocalizationPro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_)=>Localizationpro(),
    child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<Localizationpro>(context);
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Builder(
          builder: (BuildContext context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'localization',
              locale: localeProvider.locale,
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: L10n.supportedLocales,
              theme: ThemeData(
                applyElevationOverlayColor: true,
                brightness: Brightness.light,
                appBarTheme: AppBarTheme(color: Colors.teal),
                primarySwatch: Colors.blue,
                textTheme: Typography.englishLike2018.apply(
                  fontSizeFactor: 1.sp,
                ),
              ),
        
              initialRoute: Routesname.home,
              onGenerateRoute: Routes.generate_Route,
              // home:()
              
              );
          },
        );
      },
    );
  }
}