import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'config/themes/dark_theme.dart';
import 'config/themes/light_theme.dart';
import 'core/utils/strings.dart';
import 'layers/presentation/controller/main_cubit/main_cubit.dart';
import 'layers/presentation/screens/layout/layout.dart';

class TouchLine extends StatelessWidget {
  const TouchLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.72727272727275, 788.7272727272727),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) => MainCubit(),
            )
          ],
          child: GetMaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            home: child,
          ),
        );
      },
      child: const Layout(),
    );
  }
}
