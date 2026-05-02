import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logic_q/feature/onboarding/view/screen/on_boarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo[300],
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 0.1.sh,),
           TweenAnimationBuilder(
             tween: Tween(begin:60.0.h ,end:260.0.h),
               duration:const Duration(seconds: 2),
               curve: Curves.easeInQuad,
               builder: (context, value, child) {
                 return Image.asset("assets/images/brain.png",
                 height: value,width: value,fit: BoxFit.fill,);
               }
           ),
            SizedBox(height: 0.005.sh,),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0,end: 1.0),
              duration:const Duration(seconds: 2),
              builder: (context, value, child) {
                return Text("Logic",style: TextStyle(
                  color: Colors.white.withOpacity(value),
                  fontSize: 32.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.w,
                ),);
              },
            ),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0,end: 1.0),
              duration:const Duration(seconds: 2),
              builder: (context, value, child) {
                return Text("Q ?",style: TextStyle(
                  color: Colors.white.withOpacity(value),
                  fontSize: 32.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.w,
                ),);
              },
            ),
            SizedBox(height: 0.1.sh,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey[800],
                foregroundColor: Colors.white
              ),
                onPressed: (){
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) =>const OnBoardingScreen(),),
                        (route) => false);
                },
                child:const  Text("Start Now")),
            SizedBox(height: 0.05.sh,),

          ],
        ),
      ),
    );
  }
}
