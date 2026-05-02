import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[300],
      ),
      child:Column(

        children: [
          SizedBox(height: 0.1.sh,),
          Text("Logic",style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.w,
          ),),
          Text("Q ?",style: TextStyle(
            color: Colors.white,
            fontSize: 32.sp,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.w,
          ),),
          SizedBox(height: 0.05.sh,),
          Image.asset("assets/images/on_boarding/learn_new_things.png",
            height: 260.h,width: double.infinity,fit: BoxFit.fill,),
          SizedBox(height: 0.05.sh,),
          Text("Learn New Things",style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
            letterSpacing: 2.w,
          ),),

        ],
      ),
    );
  }
}