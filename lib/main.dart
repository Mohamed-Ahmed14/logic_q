

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_q/core/data/local/shared_helper.dart';
import 'package:logic_q/feature/home/view_model/cubit/cubit.dart';
import 'package:logic_q/feature/onboarding/view_model/cubit/cubit.dart';
import 'package:logic_q/feature/splash/splash_screen.dart';
import 'package:logic_q/feature/splash/view_model/cubit/cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SharedHelper.init();
  print('Change main and uploda to github');
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => SplashCubit(),),
      BlocProvider(create: (context) => OnBoardingCubit(),),
      BlocProvider(create: (context) => HomeCubit(),),
    ],
    child: ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child:const SplashScreen(),
    ),
  ));
}