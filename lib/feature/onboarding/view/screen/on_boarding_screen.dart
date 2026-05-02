import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logic_q/feature/bottom_navigation_bar/buttom_navigation_screen.dart';
import 'package:logic_q/feature/onboarding/view/screen/intro_page_1.dart';
import 'package:logic_q/feature/onboarding/view/screen/intro_page_2.dart';
import 'package:logic_q/feature/onboarding/view/screen/intro_page_3.dart';
import 'package:logic_q/feature/onboarding/view_model/cubit/cubit.dart';
import 'package:logic_q/feature/onboarding/view_model/cubit/state.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../home/view/screen/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnBoardingCubit,OnBoardingState>(
        builder: (context, state) {
          var cubit = OnBoardingCubit.get(context);
          return Stack(
            children: [
              PageView(
                controller: cubit.pageController,
                onPageChanged: (index){
                  cubit.updateLastPage(index);
                },
                children:const [
                  IntroPage1(),
                  IntroPage2(),
                  IntroPage3(),
                ],
              ),
              Align(
                alignment:  Alignment(0,0.75.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //skip Button
                    GestureDetector(
                      onTap: (){
                        cubit.pageController.jumpToPage(2);
                      },
                      child: Text("skip",style: TextStyle(
                        color: Colors.blueGrey[900],
                      ),),
                    ),
                    SmoothPageIndicator(
                        controller:cubit.pageController ,
                        count: 3),

                    //next or done button
                    cubit.lastPage?
                    GestureDetector(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (context) => const HomeScreen(),),
                                (route) => false);
                      },
                      child: Text("Done",style: TextStyle(
                        color: Colors.indigo[800],
                      ),),
                    ):
                    GestureDetector(
          onTap: (){
          cubit.pageController.nextPage(duration:const Duration(milliseconds: 500),
              curve: Curves.ease);
          },
          child: Text("next",style: TextStyle(
          color: Colors.blueGrey[900],
          ),),
          ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
