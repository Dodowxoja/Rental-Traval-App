import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_travel_app/views/details/state/details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());
}
