
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_q/feature/onboarding/view_model/cubit/state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState>{
  OnBoardingCubit():super(OnBoardingInitState());

  static OnBoardingCubit get(context)=>
      BlocProvider.of<OnBoardingCubit>(context);


  //Page view Controller

  PageController pageController = PageController();

  bool lastPage = false;

  void updateLastPage(int index){
    if(index == 2){
      lastPage = true;
    }else{
      lastPage = false;
    }
    emit(UpdateLastPageState());
  }
}