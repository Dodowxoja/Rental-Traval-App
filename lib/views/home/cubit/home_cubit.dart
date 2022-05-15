import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_travel_app/views/home/state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
}
