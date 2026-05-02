import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_q/feature/splash/view_model/cubit/state.dart';

class SplashCubit extends Cubit<SplashState>{
  SplashCubit():super(SplashInitState());

  static SplashCubit get(context)=>BlocProvider.of<SplashCubit>(context);

  //Animations
  double logic_opacity = 0.1;
  void changeOpacity(){
    logic_opacity = 0.1;
  }

}