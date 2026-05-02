import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logic_q/feature/home/model/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel categoryModel;
  const CategoryWidget({required this.categoryModel,super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(25.r),
      color: categoryModel.background_color,
      child: InkWell(
        borderRadius: BorderRadius.circular(25.r),
        onTap: (){
          print("Pressed");
        },
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),

          ),
          child: Stack(
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            fit: StackFit.passthrough,
            children: [
              Image.asset(categoryModel.image_path ?? "",
                width: 150.w,height: 150.h,fit: BoxFit.cover,),
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(categoryModel.name ?? "",style: TextStyle(
                    color: categoryModel.name_Color!.withOpacity(0.8),
                    letterSpacing: 2,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
