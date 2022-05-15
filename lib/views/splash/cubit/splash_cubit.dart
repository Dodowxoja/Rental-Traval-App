import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_travel_app/views/splash/state/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  language(v, ctx) async {
    emit(SplashLoadingState());

    emit(await ctx);
  }
}
