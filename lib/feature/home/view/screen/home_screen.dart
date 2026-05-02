

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logic_q/feature/home/view/widget/category_widget.dart';
import 'package:logic_q/feature/home/view_model/cubit/cubit.dart';
import 'package:logic_q/feature/home/view_model/cubit/state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        leading: Image.asset("assets/images/brain.png"),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome,",style: TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.w500,
              fontSize: 22.sp
            ),),
            Text("Ready to go ?",style: TextStyle(
                color: Colors.white,
                fontWeight:FontWeight.w500,
                fontSize: 24.sp
            ),),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.0.w),
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.only(start: 20.w,end: 10.w),
              decoration: BoxDecoration(
                color: Colors.indigo[800],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    children: [
                      Text("Challenge With Friends",style: TextStyle(
                        color: Colors.cyan[300]!,
                        fontSize: 18.sp
                      ),),
                      Text("Coming Soon",style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp
                      ),),
                    ],
                  ),
                  Image.asset("assets/images/home_images/challenge_friend.png",
                  width: 100.w,height: 100.h,fit: BoxFit.fill,),
                ],
              ),
            ),
            SizedBox(height: 0.05.sh),
            BlocBuilder<HomeCubit,HomeState>(
              builder: (context, state) {
                return GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                      mainAxisSpacing: 20.h,crossAxisSpacing: 15.w),
                  itemBuilder: (context, index) {
                    return CategoryWidget(categoryModel:HomeCubit.get(context).categoryData[index] );
                  },
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
