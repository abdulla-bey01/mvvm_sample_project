import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/ui/screens/main_screen.dart';
import '/app/helpers/extension-methods/color_extension.dart';
import '/ui/screens/login_result_screen.dart';
import '/ui/screens/login_screen.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MvvmApp extends StatelessWidget {
  const MvvmApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        title: 'MVVM',
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primarySwatch: HexStringToColorExtension.hexStringToColor('#1E1F28')
              .convertToMaterialColor(),
          colorScheme: ColorScheme.light(
            primary: HexStringToColorExtension.hexStringToColor('#1E1F28')
                .convertToMaterialColor(),
            secondary: const Color.fromRGBO(239, 54, 81, 1),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          LoginScreen.route: (_) => const LoginScreen(),
          LoginResultScreen.route: (_) => const LoginResultScreen(),
          MainScreen.route: (_) => const MainScreen(),
        },
        initialRoute: MainScreen.route,
      ),
    );
  }
}
