import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants/app_colors.dart';
import 'constants/navigators/global.dart';
import 'constants/navigators/route_names.dart';
import 'constants/navigators/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  overrideNavColors();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDream Connect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(color: AppColors.white),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.transparent,
        ),
      ),
      navigatorKey: appNavigator,
      initialRoute: Routes.homeScreen,
      onGenerateRoute: generateRoute,
    );
  }
}

void overrideNavColors() {
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      /// Set StatusBar Customization.
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,

      /// Set NavigationBar Customization.
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  } else if (Platform.isIOS) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      /// Set StatusBar Customization.
      statusBarBrightness: Brightness.dark,
    ));
  }
}
