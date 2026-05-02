import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_q/feature/home/view_model/cubit/state.dart';

import '../../model/category_model.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(InitHomeState());

  static HomeCubit get(context)=>BlocProvider.of<HomeCubit>(context);

  //Category List
  List<CategoryModel> categoryData=[
    CategoryModel(
      name: "GENERAL",
      name_Color: Colors.red[900],
      image_path: "assets/images/home_images/general_image.png",
      background_color: Colors.teal,
    ),
    CategoryModel(
        name: "I   Q",
        name_Color: Colors.white,
        image_path: "assets/images/home_images/iq_image.png",
        background_color: Colors.purple[800]
    ),

    CategoryModel(
      name: "ENGLISH",
      name_Color: Colors.indigo[900],
      image_path: "assets/images/home_images/eng_image.png",
      background_color: Colors.grey[600]
    ),

    CategoryModel(
        name: "MATH",
        name_Color: Colors.black,
        image_path: "assets/images/home_images/math_image.png",
        background_color: Colors.black
    ),

  ];
}